class JewelryBead < ActiveRecord::Base
  belongs_to :jewelry_item
  belongs_to :bead
end
