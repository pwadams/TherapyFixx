class AuthenticationController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])
    @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    flash[:notice] = "Thanks for signing in!"
    redirect_to root_path
  end

  def destroy
    session.clear
    flash[:notice] = "Signed out!"
    redirect_to root_path
  end


end
