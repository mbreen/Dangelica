class CreateModelPlacements < ActiveRecord::Migration
  def change
    create_table :model_placements do |t|
      t.references :event
      t.references :runway_model
      t.references :jewelry_item

      t.timestamps
    end
    add_index :model_placements, :event_id
    add_index :model_placements, :runway_model_id
    add_index :model_placements, :jewelry_item_id
  end
end
