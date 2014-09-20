require 'distance_calculator'

class JourneyEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :transport

  validates :start_postcode, presence: true
  validates :end_postcode,   presence: true

  def distance
    @distance ||= DistanceCalculator.calculate(start_postcode, end_postcode)
  end
end

