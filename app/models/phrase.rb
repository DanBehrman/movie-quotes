class Phrase
  @@api_key = Rails.application.credentials.api_key
  @@user_id = Rails.application.credentials.api_user_id

    def call_phrases_api
        results = RestClient.get("http://www.stands4.com/services/v2/phrases.php", {params:{uid: @@user_id, tokenid: @@api_key, phrase: "a", format: "json"}})
        puts results
        byebug
    end
end