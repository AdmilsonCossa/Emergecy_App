class RemoveLoTy < ActiveRecord::Migration
  def up
  end

  def down

  end
  
  def change
    remove_column :risks,  :location
    remove_column :risks,  :type
  end
end
