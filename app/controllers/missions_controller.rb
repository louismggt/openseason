class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

  def show
    @mission = Mission.find(params[:id])
    authorize @mission
  end

  def create
    sleep 3
    @job          = Job.find(params[:job_id])
    @mission      = Mission.new(missions_params)
    @mission.user = current_user
    @mission.job  = @job
    authorize @mission
    if @mission.save
      redirect_to profil_path(current_user)
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
    authorize @mission
    @mission.destroy
    redirect_to profil_path(current_user)
  end


  private

  def missions_params
    params.require(:mission).permit(:message, :status)
  end
end


