class JournalsController < ApplicationController
  def index
    @journals = Journal.all
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)
    if @journal.save
    flash[:notice] = "Journal was successfully created"
    redirect_to journals_path
    else
    render :new
    end
  end

  def show
    @journal = Journal.find(params[:id])
    @entries = @journal.entries(params[:id])
  end

  def destroy
    @journal = Journal.find(params[:id])
    @journal.destroy
    redirect_to journals_path
  end


  private

  def journal_params
    params.require(:journal).permit(:name)
  end

end
