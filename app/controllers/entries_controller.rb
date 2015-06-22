class EntriesController < ApplicationController

  def index
    text = @form_data[:text]
    client = BeyondVerbalApi.new
    @response = client.analyze(text)
    @sentiment = response[:sentiment_score]
  end

end
