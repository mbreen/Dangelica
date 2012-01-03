class CreateBeads < ActiveRecord::Migration
  def change
    create_table :beads do |t|
      t.string :name

      t.timestamps
    end
  end
end
