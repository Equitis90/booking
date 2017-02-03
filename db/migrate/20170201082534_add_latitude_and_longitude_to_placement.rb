class AddLatitudeAndLongitudeToPlacement < ActiveRecord::Migration[5.0]
  def change
    add_column :placements, :latitude, :float
    add_column :placements, :longitude, :float
  end
end
