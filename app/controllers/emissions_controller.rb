class EmissionsController < ApplicationController
  before_action :authenticate_user!

  def my_co2_this_week
    co2_array = (Date.today.beginning_of_week..Date.today.end_of_week).to_a.map { |date| current_user.journey_entries.where(journey_date: date).map { |j| j.co2 }.inject{|sum,x| sum + x } || 0.0 }
    render json: co2_array
  end

  def bath_co2_this_week
    
  end
end
