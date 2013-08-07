class Remove < ActiveRecord::Migration
  def up
    add_column :risks, :location_id, :integer
    
  end

  def down
  end
  
  def cahange 
  
  remove_column :risks, :locations_id
  end
end
