class RemoveStuffsFromRisk < ActiveRecord::Migration
  def up
  end

  def down
  remove_column :risks,  :location
  remove_column :risks,  :type

  end
end
