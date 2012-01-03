class ShowcasePlacement < ActiveRecord::Base
  belongs_to :showcase
  belongs_to :jewelry_item
end
