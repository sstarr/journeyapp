class AddTransportAttributes < ActiveRecord::Migration
  def change
    add_column :transports, :co2_per_km, :float
    add_column :transports, :ch4_per_km, :float
    add_column :transports, :n2o_per_km, :float
  end
end
