class WorkExperiencesController < ApplicationController
  def index
    @work_experiences = Work_experience.all
  end

  def show
    @work_experience = Work_experience.find(params[:id])
  end

  def new
    @work_experience = Work_experience.new
  end

  def create
    @work_experience = Work_experience.new(work_experiences_params)
    @work_experience.user = current_user
    if @work_experience.save!
      redirect_to work_experience_path(@work_experience)
    else
      render :new
    end
  end

  def edit
    @work_experience = Work_experience.find(params[:id])
  end

  def update
    @work_experience = Work_experience.find(params[:id])
    @work_experience.update(work_experiences_params)
    if @work_experience.save!
      redirect_to work_experiences_path
    else
      render :new
    end
  end

  def destroy
    @work_experience = Work_experience.find(params[:id])
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
