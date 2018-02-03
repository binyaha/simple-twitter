class TweetsController < ApplicationController

  

  def index
    @users = User.all
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def create
    @tweet =  Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    @tweet.save
    redirect_to tweets_path
  end

  def like
  end

  def unlike
  end

    private

  def tweet_params
    params.require(:tweet).permit(:description)
  end

end
