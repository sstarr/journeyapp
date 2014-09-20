# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  { name: "Car (Petrol)", co2_per_mile: 334.1, ch4_per_mile: 0.26, n2o_per_mile: 1.35   },
  { name: "Car (Diesel)", co2_per_mile: 308.67, ch4_per_mile: 0.08, n2o_per_mile: 2.68  },
  { name: "Car (Hybrid)", co2_per_mile: 222.25, ch4_per_mile: 0.17, n2o_per_mile: 1.35  },
  { name: "Car (LPG)",    co2_per_mile: 340.53, ch4_per_mile: 0.54, n2o_per_mile: 1.85  },
  { name: "Motorbike" ,   co2_per_mile: 186.84, ch4_per_mile: 3.96, n2o_per_mile: 0.96  },
  { name: "Bus",          co2_per_mile: 237.38, ch4_per_mile: 0.32, n2o_per_mile: 1.77  },
  { name: "Train",        co2_per_mile: 85.94, ch4_per_mile: 0.09, n2o_per_mile: 4.87   },
  { name: "Bicycle",      co2_per_mile: 0.0, ch4_per_mile: 0.0, n2o_per_mile: 0.0       },
  { name: "Foot",         co2_per_mile: 0.0, ch4_per_mile: 0.0, n2o_per_mile: 0.0       }
].each do |transport_attributes|
  Transport.create! transport_attributes
end
