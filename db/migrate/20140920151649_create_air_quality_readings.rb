class CreateAirQualityReadings < ActiveRecord::Migration
  def change
    create_table :air_quality_readings do |t|
      t.string :guid_id
      t.datetime :date
      t.string :sensor_location_name
      t.string :sensor_location_slug
      t.string :sensor_location
      t.string :nox
      t.string :no
      t.string :no2
      t.string :co
      t.string :pm10
      t.string :o3

      t.timestamps
    end
  end
end
