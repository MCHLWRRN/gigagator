class GigsController < ApplicationController
	def index
	end

	def new
	end

	def create
		@venue = Venue.find(params[:venue_id])
		@venue.gigs.create(gig_params)
		redirect_to venue_path(@venue)
	end

	def show
	end

	private

	def gig_params
    params.require(:gig).permit(:name)
  end

end
