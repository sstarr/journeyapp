class DistanceCalculator
  def self.calculate(start_postcode, end_postcode)
    new(start_postcode, end_postcode).distance
  end

  attr_reader :client, :start_postcode, :end_postcode

  def distance
    client.distance_in_miles
  end

  def initialize(start_postcode, end_postcode)
    @start_postcode = start_postcode
    @end_postcode   = end_postcode
  end

  private

  def client
    @client ||= GoogleDirections.new(start_postcode, end_postcode)
  end
end

