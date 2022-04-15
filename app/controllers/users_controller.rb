class UsersController < ApplicationController
  def index
  end

  def show
    @User = User.find(params[:id])
    # @profile_images = @user.profile_images
  end

  def edit
  end
end
