class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string :pick_up
      t.string :drop_off
      t.string :driver
      t.string :ride
      t.string :ticket_number

      t.timestamps
    end
  end
end
