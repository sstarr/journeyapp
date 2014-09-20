class AddBelongsToUserFields < ActiveRecord::Migration
  def change
    add_column :journey_entries, :user_id, :integer
    add_column :journeys, :user_id, :integer
  end
end
