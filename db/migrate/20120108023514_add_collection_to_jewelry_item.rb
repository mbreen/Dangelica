class AddCollectionToJewelryItem < ActiveRecord::Migration
  def change
    add_column :jewelry_items, :collection_id, :integer
  end
end
