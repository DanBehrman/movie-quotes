# rfq_api_key = Rails.application.credentials.x_rapid_api_key
# rfq_api_host = Rails.application.credentials.x_rapid_api_host

# results = JSON.parse(RestClient.get("https://andruxnet-random-famous-quotes.p.rapidapi.com/?cat=movies&count=10", headers={"X-RapidAPI-Host" => rfq_api_host, "X-RapidAPI-Key" => rfq_api_key}))

# results.each do |result|
#     Quote.create!(text: result["quote"], author: result["author"])
# end

Quote.create!(text: "Dodge, Duck, Dip, Dive, and Dodge.", author: "DodgeBall" )
Quote.create!(text: "Where we're going, we dont need roads.", author: "Back To the Future" )
Quote.create!(text: "Nobody makes me bleed my own blood!", author: "DodgeBall" )
Quote.create!(text: "Milk was a bad choice!", author: "Anchorman" )
Quote.create!(text: "All those moments will be lost in time, like tears in rain...", author: "Blade Runner" )
Quote.create!(text: "Tetsuo!!!", author: "Akira" )
Quote.create!(text: "You either die a hero, or live long enough to see yourself become the villain.", author: "The Dark Knight" )
Quote.create!(text: "The price is wrong b****", author: "Happy Gilmore" )
Quote.create!(text: "Ma, the meatloaf!", author: "Wedding Crashers" )
Quote.create!(text: "It’s like finding a needle in a stack of needles.", author: "Saving Private Ryan" )
Quote.create!(text: "Get busy living, or get busy dying.", author: "The Shawshank Redemption" )
Quote.create!(text: "It’s funny. On the outside, I was an honest man. Straight as an arrow. I had to come to prison to be a crook.", author: "The Shawshank Redemption" )
Quote.create!(text: "They mostly come at night...mostly.", author: "Aliens" )
