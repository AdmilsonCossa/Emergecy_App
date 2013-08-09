class RemoveCols < ActiveRecord::Migration
  def up

  	remove_column :risks, :date_from
  	remove_column :risks, :end_date
  end

  def down
  



  end


end
