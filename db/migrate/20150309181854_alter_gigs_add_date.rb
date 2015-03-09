class AlterGigsAddDate < ActiveRecord::Migration
  def change

  	add_column :gigs, :gig_date, :date

  end
end
