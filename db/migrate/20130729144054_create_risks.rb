class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.integer :location_id
      t.integer :type_id
      t.text :description
      t.date :date_from
      t.time :time_from

      t.timestamps
    end
  end
end
