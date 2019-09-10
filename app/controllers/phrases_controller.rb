require "rest-client"

class PhrasesController < ApplicationController
    
    @@api_key = Rails.application.credentials.api_key
    @@user_id = Rails.application.credentials.api_user_id

    def call_api
        results = RestClient.get("http://www.stands4.com/services/v2/phrases.php", headers= {uid: @@user_id, tokenid: @@api_key, phrase: "buckle up", format: json})
        byebug
    end
end