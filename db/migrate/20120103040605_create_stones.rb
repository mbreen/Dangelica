class CreateStones < ActiveRecord::Migration
  def change
    create_table :stones do |t|
      t.string :name

      t.timestamps
    end
  end
end
