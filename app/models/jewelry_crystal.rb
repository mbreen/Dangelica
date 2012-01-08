class JewelryCrystal < ActiveRecord::Base
  belongs_to :jewelry_item
  belongs_to :crystal
end
