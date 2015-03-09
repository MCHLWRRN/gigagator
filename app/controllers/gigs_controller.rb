class GigsController < ApplicationController
	def index
		if params[:date_filter].present?
			@date_filter = DateTime.parse(params[:date_filter])
			@gigs = Gig.where(:gig_date => @date_filter)

		else
			@gigs = Gig.all
		end
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
    params.require(:gig).permit(:name, :gig_date)
  end

end
