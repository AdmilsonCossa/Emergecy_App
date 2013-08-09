class Period < ActiveRecord::Base
  attr_accessible :end_date, :from_date, :impact, :probability, :risk_id
  belongs_to :risk


def self.impact_list
    @impacts
  end

  def self.probability_list
    @probabilities
  end

def self.probability_list number

    @probabilities = [ 
                          "Very Low",
                          "Low",
                          "Equally likely",
                          "High",
                          "Very High"
                         ]
    return @probabilities [number]
end

def self.impact_list number

  @impacts = [
                     "Negligible",
                     "Minor",
                     "Major",
                     "Severe",
                     "Catastrophic"
                    ]
   return @impacts [number]
end




end
