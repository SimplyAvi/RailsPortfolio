module SocialTool
    def self.twitter_search
        client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV.fetch("twitter_consumer_key")
        config.consumer_secret     = ENV.fetch("twitter_cosnsumer_secret")
        config.access_token        = ENV.fetch("twitter_access_token")
        config.access_token_secret = ENV.fetch("twitter_access_token_secret")
        end

        client.search("#tech", result_type: 'recent').take(6).collect do |tweet|
            "#{tweet.user.screen_name}: #{tweet.text}"
        end

        # client.search("to:justinbieber marry me", result_type: "recent").take(3).collect do |tweet|
        #  "#{tweet.user.screen_name}: #{tweet.text}"
        # end

    end
    
end