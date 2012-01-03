class CreateJewelryItems < ActiveRecord::Migration
  def change
    create_table :jewelry_items do |t|
      t.string :name
      t.integer :size
      t.string :earring_type
      t.references :jewelry_type
      t.float :price
      t.references :string_type
      t.references :clasp
      t.string :description

      t.timestamps
    end
    add_index :jewelry_items, :jewelry_type_id
    add_index :jewelry_items, :string_type_id
    add_index :jewelry_items, :clasp_id
  end
end
