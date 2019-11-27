class MissionsController < ApplicationController
    def index
    @missions = Mission.all
  end

  def new
    @job = Job.find(params[:job_id])
    @mission = Mission.new
  end

  def show
    @mission = Mission.find(params[:id])
    authorize @mission
  end

  def create
    @job = Job.find(params[:job_id])
    @mission = Mission.new
    @mission.user = current_user
    @mission.job = @job
    if @mission.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def edit
    @mission = Mission.find(params[:id])
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.update
    if @mission.save
      redirect_to job_missions_path(@job)
    else
      render :new
    end
  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
  end
end

end
