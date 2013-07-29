class AddlongitudeToLocation < ActiveRecord::Migration
  def up
  
  add_column :locations,  :longitude ,  :float
  add_column :locations, :radius,      :float  
    
  end
  
  def down
  
   
  
  end
end
