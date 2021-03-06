class JourneyEntriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @chart = WeeklyEmissionsChart.new
    @journies_this_week = current_user.journey_entries.this_week
    @historical_journies = current_user.journey_entries.before_this_week
  end

  def new
    @journey_entry = current_user.journey_entries.build
  end

  def create
    @journey_entry = current_user.journey_entries.build(journey_entry_params)
    if @journey_entry.save
      redirect_to journeys_path
    else
      render :new
    end
  end

  private

  def journey_entry_params
    params.require(:journey_entry).permit(
      :start_postcode, :end_postcode, :journey_date, :transport_id
    )
  end
end
