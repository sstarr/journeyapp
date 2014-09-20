require 'distance_calculator'

class JourneyEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :transport

  validates :start_postcode, presence: true
  validates :end_postcode,   presence: true

  before_validation :calculate_emissions

  def distance
    @distance ||= DistanceCalculator.calculate(start_postcode, end_postcode)
  end

  private

    def calculate_emissions
      self.co2 = distance * transport.co2_per_mile
      self.ch4 = distance * transport.ch4_per_mile
      self.n2o = distance * transport.n2o_per_mile
    end
end
