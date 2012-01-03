class CreateShowcases < ActiveRecord::Migration
  def change
    create_table :showcases do |t|
      t.string :name
      t.integer :num_positions
      t.string :location_description

      t.timestamps
    end
  end
end
