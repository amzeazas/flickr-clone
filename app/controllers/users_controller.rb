class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @images = @user.images
  end

  def index
    @users = User.all.order(username: :desc)
  end

end
