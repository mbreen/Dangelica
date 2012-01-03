class CreateShowcasePlacements < ActiveRecord::Migration
  def change
    create_table :showcase_placements do |t|
      t.date :start_date
      t.date :end_date
      t.references :showcase
      t.references :jewelry_item

      t.timestamps
    end
    add_index :showcase_placements, :showcase_id
    add_index :showcase_placements, :jewelry_item_id
  end
end
