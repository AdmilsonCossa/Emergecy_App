class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.date :from_date
      t.date :end_date
      t.string :probability
      t.string :impact

      t.timestamps
    end
  end
end
