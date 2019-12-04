class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end


  # LE NEW NE SERT PAS

  def show
    @favorite = Favorite.find(params[:job_id])
  end


  def new
    @job = Job.find(params[:job_id])
    @favorite = Favorite.new
  end

  def create
    sleep 3
    @job = Job.find(params[:job_id])
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.job = @job

    authorize @favorite
    @favorite.save

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

    authorize @favorite
    if @favorite.destroy

      # redirect_to jobs_path
    end
  end
end
