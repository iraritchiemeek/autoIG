class InstagramController < ApplicationController


	def home

	end

	def likes
		InstagramLike.like_photos()
		render :nothing => true
	end
end
