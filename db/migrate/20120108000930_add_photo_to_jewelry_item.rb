class AddPhotoToJewelryItem < ActiveRecord::Migration
  def self.up
    change_table :jewelry_items do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :jewelry_items, :photo
  end
end
