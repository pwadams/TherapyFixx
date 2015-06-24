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
        session[:patient_id] = @user.id
        flash[:notice] = "Thanks for signing up!"
        redirect_to root_path
      else
        flash[notice]
        render :new
      end
    end

    def show
    @user = User.find(params[:id])
    @journal = Journal.all
    @assessments = Assessment.all
    end




    private

    def patient_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :therapist_code, :therapist_id)
    end

  end
