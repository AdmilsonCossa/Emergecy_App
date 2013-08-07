class Risk < ActiveRecord::Base

  attr_accessible :date_from, :description, :location_id, :time_from, :type_id, :end_date

  belongs_to :location
  belongs_to :type


  
  
  
  
 def self.search(search_term)
    if search_term.blank?
      self.all
    else
      self.where("description LIKE ?", "%#{search_term}%")
    end
  end
  
  
end
