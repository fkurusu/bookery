class SessionsController < ApplicationController
  def new
    redirect_to root_path if signed_in?  
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      flash[:success] = 'Signed in successfully.'
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = 'Email address / Password incorrect.'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:info] = 'You have been sigend out successfully.'
    redirect_to root_path
  end
end