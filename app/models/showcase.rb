class Showcase < ActiveRecord::Base
  has_many :showcase_placements
  has_many :jewelry_items, :through => :showcase_placements
  
  has_attached_file :diagram, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
