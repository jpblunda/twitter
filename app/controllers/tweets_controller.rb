class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end


    def create
    	# @tweet = Tweet.new(params[:tweet])
    	@tweet = Tweet.new(tweet_params)
    	puts "@tweet before save is #{@tweet.inspect}"
    	@tweet.save
    	puts "@tweet after save is #{@tweet.inspect}"
    	redirect_to new_tweet_path
    end


    private

    def tweet_params
        # below line means require that the parameters hash contain something called 'tweet' and that 
        # tweet contains something called 'content'
        # params refers to the Parameters hash (yes, weird)
    	params.require("tweet").permit(:content)
    end

end
