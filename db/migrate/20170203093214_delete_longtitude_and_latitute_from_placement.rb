class DeleteLongtitudeAndLatituteFromPlacement < ActiveRecord::Migration[5.0]
  def change
    remove_column :placements, :latitude
    remove_column :placements, :longitude
  end
end
