class Type < ActiveRecord::Base
  attr_accessible :name
  
  has_many :risk

def to_s

  puts :name
end

end
