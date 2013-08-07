class AddEndDateToRisk < ActiveRecord::Migration
  def change
  
add_column :risks,  :end_date,:date

  end
end
