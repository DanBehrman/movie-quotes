class Quote < ApplicationRecord
  @@phrase_api_key = Rails.application.credentials.api_key
  @@phrase_user_id = Rails.application.credentials.api_user_id

  @@rfq_api_key = Rails.application.credentials.x_rapid_api_key
  @@rfq_api_host = Rails.application.credentials.x_rapid_api_host

    def call_phrases_api
      #results = RestClient.get("http://www.stands4.com/services/v2/phrases.php", {params:{uid: @@phrase_user_id, tokenid: @@phrase_api_key, phrase: "a", format: "json"}})
      puts results
      byebug
    end

    def call_rfq_api
      results = RestClient.get("https://andruxnet-random-famous-quotes.p.rapidapi.com/?cat=movies&count=10", headers={"X-RapidAPI-Host" => @@rfq_api_host, "X-RapidAPI-Key" => @@rfq_api_key})
      puts results
      byebug
    end
end