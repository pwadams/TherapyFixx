class AuthenticationController < ApplicationController

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.find_by_email(params[:email])
    @Patient && @patient.authenticate(params[:password])
    session[:patient_id] = @patient.id
    redirect_to patient_path(@patient)
  end

  def destroy
    session.clear
    redirect_to root_path
  end


end
