
class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @jobs        = policy_scope(Job)
    @preferences = Preference::PREFERENCE_TYPES.map { |type| cookies[type[:name]] }

    if @preferences.first.nil?
      @jobs = @jobs.sample(4)
    else
      @jobs = @jobs.where(land_type: @preferences[0].capitalize)
      @jobs = @jobs.where(category: @preferences[1].capitalize)
      # @jobs = @jobs.select { |job| job[:land_type] == @preferences[0] }
      # @jobs = @jobs.select { |job| job[:category] == @preferences[1] }
      @jobs = @jobs.select { |job| job.duration == @preferences[2] }
                   .select { |job| job.latitude != nil }

      @markers = @jobs.map do |job|
      {
        lat: job.latitude,
        lng: job.longitude,
        image_url: helpers.asset_url('pin2.png'),
        infoWindow: render_to_string(partial: "info_window", locals: { job: job })
      }
      end
    end


  end

  def show
    @jobs        = policy_scope(Job)

    @job = Job.find(params[:id])
    authorize @job
    respond_to do |format|
      format.html
      format.js
    end
    @markers = [{
      lat: @job.latitude,
      lng: @job.longitude
      # image_url: helpers.asset_url('pin2.png')
    }]
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(jobs_params)
    authorize @job
    if @job.save!
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(jobs_params)
    if @job.save!
      redirect_to jobs_path
    else
      render :new
    end
  end

  def destroy
    @job = Job.find(params[:id])
    if @job.destroy
      redirect_to jobs_path
    else
      render :edit
    end
  end

  private

  def jobs_params
    params.require(:job).permit(:address, :latitude, :longitude, :meal, :accommodation, :salary, :places, :start_date, :end_date, :description, :content, :category, :logo, :photo, :land_type, :professional_domain, :title)
  end

  def cookie?
    @preferences != nil
  end
end
