class ProfilsController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @favorites        = @user.favorites
    @missions         = @user.missions
    @work_experiences = @user.work_experiences
    @work_experience  = WorkExperience.new
    authorize @work_experience
  end

  def update
    @user = current_user
    authorize @user
    @user.update(user_params)
    redirect_to profil_path(@user)
  end

  def user_params
    params.require(:user).permit(:cv)
  end
end
