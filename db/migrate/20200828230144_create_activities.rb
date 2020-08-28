class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.integer :sort
      t.datetime :start_date
      t.string :duration
      t.integer :price
      t.string :name_activity
      t.string :description
      t.string :location
      t.datetime :end_date

      t.timestamps
    end
  end
end
