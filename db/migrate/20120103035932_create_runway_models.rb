class CreateRunwayModels < ActiveRecord::Migration
  def change
    create_table :runway_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
