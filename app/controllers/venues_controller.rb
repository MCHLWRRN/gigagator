class VenuesController < ApplicationController
	def new
		@venue = Venue.new
	end

	def show
		@venue = Venue.find(params[:id])
		@gig = Gig.new
	end

	private

	def venue_params
		params.require(:place).permit(:name, :description, :address)
	end
end
