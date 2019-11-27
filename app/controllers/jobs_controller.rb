class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @jobs        = policy_scope(Job)
    @preferences = Preference::PREFERENCE_TYPES.map {|key, value| cookies[key]}
  end

  def show
    @job = Job.find(params[:id])
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
end
