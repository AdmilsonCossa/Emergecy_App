class AddO < ActiveRecord::Migration
  def up
  	add_column :risks, :period_id, :integer
 end
  def down
  end
end
