require 'distance_calculator'

class JourneyEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :transport

  validates :start_postcode, presence: true
  validates :end_postcode,   presence: true

  before_validation :calculate_emissions
  before_validation :check_journey_date

  scope :this_week, -> { where("journey_date >= ? AND journey_date <= ?", Date.today.beginning_of_week, Date.today.end_of_week) }
  scope :before_this_week, -> { where("journey_date <= ?", Date.today.beginning_of_week) }

  def distance
    @distance ||= DistanceCalculator.calculate(start_postcode, end_postcode)
  end

  private

    def calculate_emissions
      self.co2 = distance * transport.co2_per_mile
      self.ch4 = distance * transport.ch4_per_mile
      self.n2o = distance * transport.n2o_per_mile
    end

    def check_journey_date
      self.journey_date ||= Date.today
    end
end
