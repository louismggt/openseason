class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def new
    @job = Job.find(params[:job_id])
    @favorite = Favorite.new
  end

  def create
    @job = Job.find(params[:job_id])
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.job = @job
    if @favorite.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    @favorite = Favorite.find(params[:id])
    @favorite.update
    if @favorite.save
      redirect_to job_favorites_path(@job)
    else
      render :new
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
  end
end
