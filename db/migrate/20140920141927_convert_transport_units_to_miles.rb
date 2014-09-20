class ConvertTransportUnitsToMiles < ActiveRecord::Migration
  def change
    rename_column :transports, :co2_per_km, :co2_per_mile
    rename_column :transports, :ch4_per_km, :ch4_per_mile
    rename_column :transports, :n2o_per_km, :n2o_per_mile
  end
end
