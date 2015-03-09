class Venue < ActiveRecord::Base
	has_many :gigs

	geocoded_by :address
	after_validation :geocode
end
