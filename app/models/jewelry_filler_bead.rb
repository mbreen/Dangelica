class JewelryFillerBead < ActiveRecord::Base
  belongs_to :jewelry_item
  belongs_to :filler_bead
end
