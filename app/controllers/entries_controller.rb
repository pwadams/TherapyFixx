class EntriesController < ApplicationController

  def index
    text = @form_data[:text]
    client = Loudelement.new
    response = client.analyze(text)
    @sentiment = response[:sentiment_score]
  end

  def new
    @journal = Journal.find(params[:journal_id])
    @entry = Entry.new
  end

  def show
    @journal = Journal.find(params[:journal_id])
    @entries = @journal.entries.find(params[:id])
    @comment = Comment.all
    @comment = Comment.new
  end

  def create
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.new(entry_params)
    @entry.save
    redirect_to journal_path(@journal)
  end

  private
    def entry_params
      params.require(:entry).permit(:name, :date, :description)
    end

end
