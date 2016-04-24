class TweetController < ApplicationController
  before_action :clean_params, only: [:tweet]

  def index
  end

  def tweet
    bot = TwitterBot.new
    bot.tweet(params[:message])
    redirect_to root_path
  end

private

  def clean_params
    params.permit(:message)
  end


end
