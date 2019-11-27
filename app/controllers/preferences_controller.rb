class PreferencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @preferences = Preference.all
  end

  def show
    @preference = Preference.find(params[:id])
  end

  def new
    @preference = Preference.new
    authorize @preference
  end

  def create
    @preference = Preference.new
    authorize @preference
    if user_signed_in?
      @preference.value = params[:value]
      @preference.user  = current_user
      @preference.preference_type = type_of_preference(params[:step])
      @preference.save
    end
    cookies[type_of_preference(params[:step]).to_sym] = params[:value]
    next_step = params[:step].to_i + 1
    if params[:step].to_i == 3
      redirect_to jobs_path
    else
      redirect_to new_preference_path(step: next_step)
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

  def type_of_preference(step)
    if step == "1"
      "land_type"
    elsif step == "2"
      "category"
    else
      "duration"
    end
  end
end
