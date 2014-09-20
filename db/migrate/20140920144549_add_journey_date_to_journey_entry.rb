class AddJourneyDateToJourneyEntry < ActiveRecord::Migration
  def change
    add_column :journey_entries, :journey_date, :date
  end
end
