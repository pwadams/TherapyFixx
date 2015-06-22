class EntriesController < ApplicationController

  def index
    text = @form_data[:text]
    client = Loudelement.new
    @response = client.analyze(text)
    @sentiment = response[:sentiment_score]
  end

  def show
  @entries = @journal.entries.find(params[:id])
  @comment = Comment.all
  @comment = Comment.new
  end

end

 = Loudelement.new
  @loudelement ||= loudelement.sentiment-score(current_user.X-Mashape-Key) if current_user.X-Mashape-Key
end
