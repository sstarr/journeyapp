class WeeklyEmissionsChart
  def bath
    "2003,2020,2100,2099,2400,2000,0"
  end

  def you(user)
    (Date.today.beginning_of_week..Date.today.end_of_week).to_a.map { |date| user.journey_entries.where(journey_date: date).map { |j| j.n2o }.inject{|sum,x| sum + x } || 0.0 }.to_s.gsub(/(\[|\])/, '')
  end
end
