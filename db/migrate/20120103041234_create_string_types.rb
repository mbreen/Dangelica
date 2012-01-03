class CreateStringTypes < ActiveRecord::Migration
  def change
    create_table :string_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
