class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :post_id, :limit => 8
      t.integer :price
      t.text :description
      t.datetime :datetime

      t.timestamps
    end
  end
end