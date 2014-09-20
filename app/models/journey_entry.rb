class JourneyEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :transport

  validates :start_postcode, presence: true
  validates :end_postcode,   presence: true

  before_validation :calculate_emissions

  private

    def calculate_emissions
      self.co2 = distance_in_km * transport.co2_per_km
      self.ch4 = distance_in_km * transport.ch4_per_km
      self.n2o = distance_in_km * transport.n2o_per_km
    end
end
