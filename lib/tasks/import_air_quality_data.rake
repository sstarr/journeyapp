require 'csv'

namespace :data do
  namespace :air_quality do
    desc "Import Air Quality data"
    task :import => :environment do
      CSV.foreach(ENV['FILE'], headers: true) do |row|
        AirQualityReading.create!(
          :guid_id              => row[0],
          :date                 => row[1],
          :sensor_location_name => row[2],
          :sensor_location_slug => row[3],
          :sensor_location      => row[5],
          :nox                  => row[6],
          :no                   => row[7],
          :no2                  => row[8],
          :co                   => row[9],
          :pm10                 => row[10],
          :o3                   => row[11]
        )
      end
    end
  end
end

