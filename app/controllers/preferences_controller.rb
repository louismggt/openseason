class PreferencesController < ApplicationController
  def index
    @preferences = Preference.all
  end

  def show
    @preference = Preference.find(params[:id])
  end

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preferences_params)
    @preference.user = current_user
    if @preference.save!
      redirect_to preference_path(@preference)
    else
      render :new
    end
  end

  def edit
    @preference = Preference.find(params[:id])
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preferences_params)
    if @preference.save!
      redirect_to preferences_path
    else
      render :new
    end
  end

  def destroy
    @preference = Preference.find(params[:id])
    if @preference.destroy
      redirect_to preferences_path
    else
      render :edit
    end
  end

  private

  def preferences_params
    params.require(:preference).permit(:duration, :start_date, :end_date, :land_type, :category)
  end
end
