class CreateJewelryCrystals < ActiveRecord::Migration
  def change
    create_table :jewelry_crystals do |t|
      t.references :jewelry_item
      t.references :crystal

      t.timestamps
    end
    add_index :jewelry_crystals, :jewelry_item_id
    add_index :jewelry_crystals, :crystal_id
  end
end
