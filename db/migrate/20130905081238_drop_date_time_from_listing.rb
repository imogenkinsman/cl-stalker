class DropDateTimeFromListing < ActiveRecord::Migration
  def change
    remove_column :listings, :datetime
  end
end
