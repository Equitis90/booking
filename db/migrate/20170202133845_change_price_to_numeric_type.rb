class ChangePriceToNumericType < ActiveRecord::Migration[5.0]
  def change
    change_column :placements, :price, :numeric, precision: 2
  end
end
