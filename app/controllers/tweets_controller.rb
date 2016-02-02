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
    	params.require(:tweet).permit(:content)
    end

end
