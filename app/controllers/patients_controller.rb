class PatientsController < ApplicationController

    def index
      @patients = Patient.all
    end

    def new
    @patient = Patient.new
    end

    def create
      @patient = Patient.new(patient_params)
      if @patient.save
        session[:patient_id] = @patient.id
        flash[:notice] = "Thanks for signing up!"
        redirect_to root_path
      else
        flash[notice]
        render :new
      end
    end

    def show
    @patient = Patient.find(params[:id])
    end




    private

    def patient_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :therapist_code, :therapist_id)
    end

  end
