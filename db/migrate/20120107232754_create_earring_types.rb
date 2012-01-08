class CreateEarringTypes < ActiveRecord::Migration
  def change
    create_table :earring_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
