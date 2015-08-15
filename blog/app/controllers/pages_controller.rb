class PagesController < ApplicationController
  def index
    @article = Article.last
  end

  def about
    @tweets = twitter_client.user_timeline("team_cheesy")
  end

  def contact
  end

  private
    def twitter_client
      @twitter_client ||= Twitter::REST::Client.new do |config|
        config.consumer_key        = "secret"
        config.consumer_secret     = "secret"
        config.access_token        = "secret"
        config.access_token_secret = "secret"
      end
    end
end
