class AddDiagramToShowcase < ActiveRecord::Migration
  def self.up
    change_table :showcases do |t|
      t.has_attached_file :diagram
    end
  end

  def self.down
    drop_attached_file :showcases, :diagram
  end

end
