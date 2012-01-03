class CreateJewelryFillerBeads < ActiveRecord::Migration
  def change
    create_table :jewelry_filler_beads do |t|
      t.references :jewelry_item
      t.references :filler_beads

      t.timestamps
    end
    add_index :jewelry_filler_beads, :jewelry_item_id
    add_index :jewelry_filler_beads, :filler_beads_id
  end
end
