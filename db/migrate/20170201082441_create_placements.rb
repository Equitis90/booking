class CreatePlacements < ActiveRecord::Migration[5.0]
  def change
    create_table :placements do |t|
      t.string :title, :null => false
      t.decimal :price, :null => false
      t.string :address, :null => false

      t.timestamps
    end
  end
end
