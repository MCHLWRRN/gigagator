class VenuesController < ApplicationController
	def new
		@venue = Venue.new
	end

	def create
		@place = Venue.create(venue_params)
		redirect_to root_path
	end

	def show
		@venue = Venue.find(params[:id])
		@gig = Gig.new
	end

	private

	def venue_params
		params.require(:venue).permit(:name, :description, :address)
	end
end
