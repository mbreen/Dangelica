class CreateJewelryTypes < ActiveRecord::Migration
  def change
    create_table :jewelry_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
