class WorkExperiencesController < ApplicationController
  def create
    @work_experience = WorkExperience.new(work_experiences_params)
    authorize @work_experience
    @work_experience.user = current_user
    if @work_experience.save!
      redirect_to work_experience_path(@work_experience)
      # redirect to profile
    else
      render "profils/show"
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
