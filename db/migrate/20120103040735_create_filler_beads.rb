class CreateFillerBeads < ActiveRecord::Migration
  def change
    create_table :filler_beads do |t|
      t.string :name

      t.timestamps
    end
  end
end
