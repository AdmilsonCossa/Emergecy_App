class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.string :location
      t.string :type
      t.text :description
      t.date :date_from
      t.time :time_from

      t.timestamps
    end
  end
end
