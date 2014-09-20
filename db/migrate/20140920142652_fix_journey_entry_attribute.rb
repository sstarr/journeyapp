class FixJourneyEntryAttribute < ActiveRecord::Migration
  def change
    rename_column :journey_entries, :n20, :n2o
  end
end
