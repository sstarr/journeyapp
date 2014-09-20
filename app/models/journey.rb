class Journey < ActiveRecord::Base
  belongs_to :user
  belongs_to :transport
end
