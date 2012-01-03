class CreateJewelryStones < ActiveRecord::Migration
  def change
    create_table :jewelry_stones do |t|
      t.references :jewelry_item
      t.references :stone

      t.timestamps
    end
    add_index :jewelry_stones, :jewelry_item_id
    add_index :jewelry_stones, :stone_id
  end
end
