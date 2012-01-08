require 'paperclip'

class JewelryItem < ActiveRecord::Base
  
  belongs_to :jewelry_type
  belongs_to :string_type
  belongs_to :clasp
  belongs_to :earring_type
  belongs_to :collection
  
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
