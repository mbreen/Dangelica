class JewelryItem < ActiveRecord::Base
  belongs_to :jewelry_type
  belongs_to :string_type
  belongs_to :clasp
end
