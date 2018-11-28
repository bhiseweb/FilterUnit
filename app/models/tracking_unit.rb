require 'dragonfly'

class TrackingUnit < ApplicationRecord
  belongs_to :brand
  belongs_to :project

  dragonfly_accessor :main_image
end
