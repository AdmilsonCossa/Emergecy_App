class Location < ActiveRecord::Base
  attr_accessible :latitude, :name
 
  has_many :risk

  
end
