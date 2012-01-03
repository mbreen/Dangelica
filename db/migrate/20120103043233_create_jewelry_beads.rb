class CreateJewelryBeads < ActiveRecord::Migration
  def change
    create_table :jewelry_beads do |t|
      t.references :jewelry_item
      t.references :bead

      t.timestamps
    end
    add_index :jewelry_beads, :jewelry_item_id
    add_index :jewelry_beads, :bead_id
  end
end
