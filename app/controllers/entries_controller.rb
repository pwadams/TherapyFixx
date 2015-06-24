class EntriesController < ApplicationController
  def index
    ext = @form_data[:text]
        client = Loudelement.new
        response = client.analyze(text)
        @sentiment = response[:sentiment_score]
  end


  def new
    @journal = Journal.find(params[:journal_id])
    @entry = Entry.new
  end

  def create
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.new(entry_params)
    @entry.save

    # send to the api
    client = LoudelementApi.new
    response = client.analyze(@entry.description)
    @entry.sentiment_score = response["sentiment-score"].to_s + " " + response["sentiment-text"]
    @entry.save

    redirect_to journal_path(@journal)
  end

  def show
    @entries = @journal.entries(params[:id])
  end

  def destroy
    @journal = Journal.find(params[:journal_id])
    @entry = @journal.entries.find(params[:id])
    @entry.destroy
    redirect_to journal_path(@journal)
  end

  private
    def entry_params
      params.require(:entry).permit(:name, :date, :description)
    end
end
