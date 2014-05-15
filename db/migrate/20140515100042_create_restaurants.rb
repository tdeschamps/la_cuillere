class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :zipcode
      t.string :type
      t.string :city
      t.string :photo_url

      t.timestamps
    end
  end
end
