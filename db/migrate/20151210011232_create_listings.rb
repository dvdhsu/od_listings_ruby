class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings, id: false do |t|
      t.string :street
      t.string :status
      t.integer :price
      t.integer :bathrooms
      t.integer :bedrooms
      t.integer :sq_ft
      t.decimal :lat, {precision: 23, scale: 20}
      t.decimal :lng, {precision: 23, scale: 20}

      t.timestamps null: false
      t.primary_key :od_id
    end
    add_index :listings, :status
    add_index :listings, :price
    add_index :listings, :bathrooms
    add_index :listings, :bedrooms
    add_index :listings, :lat
    add_index :listings, :lng
  end
end
