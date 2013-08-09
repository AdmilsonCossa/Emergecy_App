class AddRiksId < ActiveRecord::Migration
  def up
  add_column :periods, :risk_id, :integer

  end

  def down
  	remove_column :periods, :risk_id
  end
end
