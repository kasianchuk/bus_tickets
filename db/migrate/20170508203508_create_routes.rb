class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.integer  :numb_of_seats
      t.string   :departure
      t.datetime :departure_time
      t.string   :arrival
      t.datetime :arrival_time
      t.timestamps
    end
  end
end
