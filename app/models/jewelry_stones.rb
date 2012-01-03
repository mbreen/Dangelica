class JewelryStones < ActiveRecord::Base
  belongs_to :jewelry_item
  belongs_to :stone
end
