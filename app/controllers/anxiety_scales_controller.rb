class AnxietyScalesController < ApplicationController

  def new
    @anxiety_scale = AnxietyScale.new
  end

  def show
    @anxiety_scale = AnxietyScale.find(params[:id])
    @anxiety_scales = AnxietyScale.all
  end

  def create
    @anxiety_scale = AnxietyScale.new(anxiety_scale_params)
    if @anxiety_scale.save
      flash[:notice] = "Scale successfully created"
      redirect_to  user_path(current_user)
    else
      render :new
    end
  end

  def destroy
      @anxiety_scale = @nxiety_scale.find(params[:id])
      @anxiety_scale.destroy
      redirect_to users_path(@user)
    end

  private

  def anxiety_scale_params
    params.require(:anxiety_scale).permit(
    :patient_id,
    :date,
    :worrying,
    :feeling_afraid,
    :feeling_tense,
    :difficulty_sleeping).merge(user_id: current_user.id)
  end

end
