class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.datetime :time
      t.integer :duration
      t.references :from_airport, index: true
      t.references :to_airport, index: true

      t.timestamps
    end
  add_foreign_key :flights, :airports, column: :from_airport_id
  add_foreign_key :flights, :airports, column: :to_airport_id
	end
end
