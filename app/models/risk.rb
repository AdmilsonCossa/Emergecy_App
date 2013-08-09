class Risk < ActiveRecord::Base

  attr_accessible :date_from, :description, :location_id, :time_from, :type_id, :end_date, :periods_attributes
  


  belongs_to :location
  belongs_to :type
  has_many   :periods

  
  accepts_nested_attributes_for :periods, :allow_destroy => true
  
  
 def self.search(search_term)
    if search_term.blank?
      self.all
    else
      self.where("description LIKE ?", "%#{search_term}%")
    end
  end
  
  
end
