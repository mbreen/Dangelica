class Showcase < ActiveRecord::Base
  has_attached_file :diagram, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
