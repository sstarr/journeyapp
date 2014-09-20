module GeocodeJourneyPostcodes
  def self.included(base)
    base.after_validation(:geocode_postcodes)
  end

  def geocode_postcodes
    geocode(address: :start_postcode, latitude: :start_latitude, longitude: :start_longitude)
    geocode(address: :end_postcode,   latitude: :end_latitude,   longitude: :end_longitude)
  end

  def geocode(address:, latitude:, longitude:)
    results = Geocoder.search(self.public_send(address))
    if result = results.first
      self.public_send("#{latitude}=", result.latitude)
      self.public_send("#{longitude}=", result.longitude)
    end
  end
end

