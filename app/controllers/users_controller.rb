class UsersController < ApplicationController
  # if signed in not show the registration
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:info] = 'User created successfully.'
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
