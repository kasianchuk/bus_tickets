class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.integer :numb_of_seats
      t.string :departure
      t.date :departure_date
      t.time :departure_time
      t.string :arrival
      t.date :arrival_date
      t.time :arrival_time
      t.boolean :nonstop

      t.timestamps
    end
  end
end
