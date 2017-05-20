class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :route_id
      t.integer :chair_num
      t.integer :user_id

      t.timestamps
    end
  end
end
