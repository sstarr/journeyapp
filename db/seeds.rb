# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  { name: "Car (Petrol)", co2_per_km: 207.6, ch4_per_km: 0.16, n2o_per_km: 0.84 },
  { name: "Car (Diesel)", co2_per_km: 191.8, ch4_per_km: 0.05, n2o_per_km: 1.67 },
  { name: "Car (Hybrid)", co2_per_km: 138.1, ch4_per_km: 0.11, n2o_per_km: 0.84 },
  { name: "Car (LPG)",    co2_per_km: 211.6, ch4_per_km: 0.34, n2o_per_km: 1.15 },
  { name: "Motorbike" ,   co2_per_km: 116.1, ch4_per_km: 2.46, n2o_per_km: 0.6  },
  { name: "Bus",          co2_per_km: 147.5, ch4_per_km: 0.2, n2o_per_km: 1.1   },
  { name: "Train",        co2_per_km: 53.4, ch4_per_km: 53.4, n2o_per_km: 3.03  },
  { name: "Bicycle",      co2_per_km: 0.0, ch4_per_km: 0.0, n2o_per_km: 0.0     },
  { name: "Foot",         co2_per_km: 0.0, ch4_per_km: 0.0, n2o_per_km: 0.0     }
].each do |transport_attributes|
  Transport.create! transport_attributes
end
