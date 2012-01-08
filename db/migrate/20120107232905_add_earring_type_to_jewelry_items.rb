class AddEarringTypeToJewelryItems < ActiveRecord::Migration
  def change
    remove_column :jewelry_items, :earring_type
    add_column :jewelry_items, :earring_type_id, :integer
  end
end
