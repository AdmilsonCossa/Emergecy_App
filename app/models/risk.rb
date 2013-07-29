class Risk < ActiveRecord::Base
  attr_accessible :date_from, :description, :location, :time_from, :type
  
  belongs_to :location
  belongs_to :type
end
