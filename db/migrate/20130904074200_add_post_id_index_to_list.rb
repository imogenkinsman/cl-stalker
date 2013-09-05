class AddPostIdIndexToList < ActiveRecord::Migration
  def change
    add_index :listings, :post_id
  end
end
