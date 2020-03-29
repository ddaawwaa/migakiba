class AddPlaceinfoToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :latitude, :float, null: false
    add_column :spots, :longitude, :float, null: false
  end
end