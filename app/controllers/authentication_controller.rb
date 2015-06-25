class AuthenticationController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    if session[:previous_page] == nil
      redirect_to user_path(@user)
    else
      redirect_to session[:previous_page]
    end
  else
    flash[:danger] = "Email/Password combination is invalid."
    render :new
  end
end

  def destroy
    session.clear
    redirect_to root_path
  end


end
