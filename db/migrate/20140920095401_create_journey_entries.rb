class CreateJourneyEntries < ActiveRecord::Migration
  def change
    create_table :journey_entries do |t|
      t.string :start_postcode
      t.string :start_latitude
      t.string :start_longitude
      t.string :end_postcode
      t.string :end_latitude
      t.string :end_longitude
      t.references :transport, index: true

      t.timestamps
    end
  end
end
