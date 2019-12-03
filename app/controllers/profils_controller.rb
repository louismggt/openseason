class ProfilsController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @favorites = @user.favorites
    @missions = @user.missions
    @work_experiences = @user.work_experiences
    @work_experience = WorkExperience.new
    authorize @work_experience
  end
end
