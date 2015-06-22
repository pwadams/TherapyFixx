require 'faraday'
require 'json'
require 'cgi'

class LoudelementApi

  def initialize
    @conn = Faraday.new(:url => 'https://loudelement-free-natural-language-processing-service.p.mashape.com/nlp-url/') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
  end

  def analyze(text)
    response = @conn.get do |req|
      req.url "https://loudelement-free-natural-language-processing-service.p.mashape.com/nlp-text/?text="
      req.headers['X-Mashape-Key'] = 'fXlvwoDQPqmsh9xUld8fsCOWsTefp1ANJxEjsnpCiGJK5oEsTt'
      req.headers['Accept'] = 'application/json'
    end
    response = JSON.parse(response.body)
    # p sentiment = response["sentiment-score"]
    response["sentiment-score"]
  end
end


client = LoudelementApi.new
client.analyze('This is my journal entry from my form')
