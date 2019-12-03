class WorkExperiencesController < ApplicationController
  def index
    @work_experiences = WorkExperience.all
  end

  def show
    @work_experience = WorkExperience.find(params[:user_id])
  end

  def new
    @work_experience = WorkExperience.new
  end

  def create
    @work_experience = WorkExperience.new(work_experiences_params)
    @work_experience.user = current_user
    if @work_experience.save!
      redirect_to work_experience_path(@work_experience)
    else
      render :new
    end
  end

  def edit
    @work_experience = WorkExperience.find(params[:id])
  end

  def update
    @work_experience = WorkExperience.find(params[:id])
    @work_experience.update(work_experiences_params)
    if @work_experience.save!
      redirect_to work_experiences_path
    else
      render :new
    end
  end

  def destroy
    @work_experience = WorkExperience.find(params[:id])
    if @work_experience.destroy
      redirect_to work_experiences_path
    else
      render :edit
    end
  end

  private

  def work_experiences_params
    params.require(:work_experience).permit(:duration, :start_date, :end_date, :land_type, :category)
  end
end
