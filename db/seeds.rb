# rfq_api_key = Rails.application.credentials.x_rapid_api_key
# rfq_api_host = Rails.application.credentials.x_rapid_api_host

# results = JSON.parse(RestClient.get("https://andruxnet-random-famous-quotes.p.rapidapi.com/?cat=movies&count=10", headers={"X-RapidAPI-Host" => rfq_api_host, "X-RapidAPI-Key" => rfq_api_key}))

# results.each do |result|
#     Quote.create!(text: result["quote"], author: result["author"])
# end

# Quote.create!(text: "Dodge, Duck, Dip, Dive, and Dodge.", author: "DodgeBall" )
# Quote.create!(text: "Where we're going, we dont need roads.", author: "Back To the Future" )
# Quote.create!(text: "Nobody makes me bleed my own blood!", author: "DodgeBall" )
# Quote.create!(text: "Milk was a bad choice!", author: "Anchorman" )
# Quote.create!(text: "All those moments will be lost in time, like tears in rain...", author: "Blade Runner" )
# Quote.create!(text: "Tetsuo!!!", author: "Akira" )
# Quote.create!(text: "You either die a hero, or live long enough to see yourself become the villain.", author: "The Dark Knight" )
# Quote.create!(text: "The price is wrong b****", author: "Happy Gilmore" )
# Quote.create!(text: "Ma, the meatloaf!", author: "Wedding Crashers" )
# Quote.create!(text: "It’s like finding a needle in a stack of needles.", author: "Saving Private Ryan" )
# Quote.create!(text: "Get busy living, or get busy dying.", author: "The Shawshank Redemption" )
# Quote.create!(text: "It’s funny. On the outside, I was an honest man. Straight as an arrow. I had to come to prison to be a crook.", author: "The Shawshank Redemption" )
# Quote.create!(text: "They mostly come at night...mostly.", author: "Aliens" )

# Quote.create!(text: "With great power comes great responsibility.", author: "Spiderman" )
# Quote.create!(text: "Yippee-ki-yay, motherf****.", author: "Die Hard" )
# Quote.create!(text: "You're a wizard Harry!", author: "Harry Potter and the Sorcerer's Stone" )
# Quote.create!(text: "Aloha, Mr. Hand.", author: "Fast Times at Ridgemont High" )
# Quote.create!(text: "Let me tell you something. There's no nobility in poverty. I've been a poor man, and I've been a rich man. And I choose rich every fucking time.", author: "The Wolf of Wall Street" )
# Quote.create!(text: "When you decide to be something, you can be it. That's what they don't tell you in the church. When I was your age they would say we can become cops, or criminals. Today, what I'm saying to you is this: when you're facing a loaded gun, what's the difference?", author: "The Departed" )
# Quote.create!(text: "I hope she'll be a fool - that's the best thing a girl can be in this world, a beautiful little fool.", author: "The Great Gatsby" )
# Quote.create!(text: "Hasta la vista, baby.", author: "Terminator 2: Judgement Day" )
# Quote.create!(text: "I need your clothes, your boots and your motorcycle.", author: "Terminator 2: Judgement Day" )
# Quote.create!(text: "On Wednesdays we wear pink!", author: "Mean Girls" )
# Quote.create!(text: "I'm sorry that people are so jealous of me... but I can't help it that I'm popular.", author: "Mean Girls" )
# Quote.create!(text: "Don't cross the streams.", author: "Ghostbusters" )
# Quote.create!(text: "Who wants to go down the creepy tunnel inside the tomb first?", author: "National Treasure" )
# Quote.create!(text: "We named the *dog* Indiana.", author: "Indiana Jones and the Last Crusade" )
# Quote.create!(text: "According to the map, we've only gone 4 inches.", author: "Dumb and Dumber" )
# Quote.create!(text: "Just keep swimming.", author: "Finding Nemo" )
# Quote.create!(text: "To infinity, and beyond!", author: "Toy Story" )
# Quote.create!(text: "They took your wife away in a balloon? Well you don't need the police, pal, you need a psychiatrist!", author: "Killer Klowns from Outer Space")