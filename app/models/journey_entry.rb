require 'geocode_journey_postcodes'

class JourneyEntry < ActiveRecord::Base
  include GeocodeJourneyPostcodes

  belongs_to :user
  belongs_to :transport

  validates :start_postcode, presence: true
  validates :end_postcode,   presence: true
end

