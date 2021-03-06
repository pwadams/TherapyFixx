class EntriesController < ApplicationController

  def index
    @journal = Journal.find(params[:journal_id])
    @entries = Entry.all

  end


  def new
    @journal = Journal.find(params[:journal_id])
    @entry = Entry.new
  end

  def create
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.new(entry_params)
    @entry.save

    redirect_to journal_entry_path(@journal, @entry)
  end

  def show
    @journal = Journal.find(params[:journal_id])
    @entries = @journal.entries(params[:id])
  end

  def destroy
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.find(params[:id])
    @entry.destroy
    redirect_to user_path(@user)
  end

  private
    def entry_params
      params.require(:entry).permit(:name, :date, :description)
    end
end
