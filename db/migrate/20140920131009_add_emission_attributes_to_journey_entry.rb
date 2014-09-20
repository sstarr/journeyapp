class AddEmissionAttributesToJourneyEntry < ActiveRecord::Migration
  def change
    add_column :journey_entries, :co2, :float
    add_column :journey_entries, :ch4, :float
    add_column :journey_entries, :n20, :float
  end
end
