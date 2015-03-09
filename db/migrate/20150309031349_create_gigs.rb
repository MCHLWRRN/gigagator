class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|

    	t.string :name

      t.timestamps
    end
  end
end
