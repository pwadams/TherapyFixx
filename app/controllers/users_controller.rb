class UsersController < ApplicationController

  before_action :authenticate_user, only: [:index, :show]
  before_action :ensure_admin, only: [:index]

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to new_home_path
      else
        render :new
      end
    end

    def show
    @user = User.find(params[:id])
    @journals = Journal.all
    @stress_logs = StressLog.all
    @anxiety_scales = AnxietyScale.all
    end

    private

    def user_params
      params.require(:user).permit(:first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation,
      :therapist_code,
      :therapist_id)
    end

  end
