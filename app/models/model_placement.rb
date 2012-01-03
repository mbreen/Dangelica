class ModelPlacement < ActiveRecord::Base
  belongs_to :event
  belongs_to :runway_model
  belongs_to :jewelry_item
end
