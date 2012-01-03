class CreateClasps < ActiveRecord::Migration
  def change
    create_table :clasps do |t|
      t.string :name

      t.timestamps
    end
  end
end
