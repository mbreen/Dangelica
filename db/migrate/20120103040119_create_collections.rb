class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :description
      t.string :theme

      t.timestamps
    end
  end
end
