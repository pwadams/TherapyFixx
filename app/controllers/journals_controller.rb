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
    redirect_to journal_entries_path(@journal)
    else
    render :new
    end
  end

  def show
    @journal = Journal.find(params[:id])
    @entries = @journal.entries
  end

  private

  def journal_params
    params.require(:journal).permit(:name)
  end

end
