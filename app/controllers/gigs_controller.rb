class GigsController < ApplicationController
	def index
	end

	def new
	end

	def create
		@venue = Venue.find(params[:venue_id])
	end

	def show
		@gig = Gig.find(params[:id])
	end

end
