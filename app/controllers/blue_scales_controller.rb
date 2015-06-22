class BlueScalesController < ApplicationController
  def new
    @blue_scale = BlueScale.new
  end

  def show
    @blue_scale = BlueScale.find(params[:id])
  end

  private

  def blue_scale_params
    params.require(:blue_scale).permit(:sadness, :emptiness, :lack_of_enjoyment, :fatigue, :anger, :overall)
  end
end
