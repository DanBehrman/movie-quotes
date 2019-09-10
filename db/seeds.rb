rfq_api_key = Rails.application.credentials.x_rapid_api_key
rfq_api_host = Rails.application.credentials.x_rapid_api_host

results = JSON.parse(RestClient.get("https://andruxnet-random-famous-quotes.p.rapidapi.com/?cat=movies&count=10", headers={"X-RapidAPI-Host" => rfq_api_host, "X-RapidAPI-Key" => rfq_api_key}))

results.each do |result|
    Quote.create!(text: result["quote"], author: result["author"])
end
