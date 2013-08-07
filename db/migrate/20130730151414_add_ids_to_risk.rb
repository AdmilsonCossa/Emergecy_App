class AddIdsToRisk < ActiveRecord::Migration
  def change
add_column :risks, :locations_id, :integer
add_column  :risks, :type_id,       :integer

  end
end
