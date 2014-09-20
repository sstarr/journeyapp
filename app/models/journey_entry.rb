class JourneyEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :transport

  validates :start_postcode, presence: true
  validates :end_postcode,   presence: true
end

