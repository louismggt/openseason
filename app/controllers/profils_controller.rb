class ProfilsController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end
end
