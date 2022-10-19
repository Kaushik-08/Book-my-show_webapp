class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :date_of_booking
      t.integer :quantity

      t.timestamps
    end
  end
end
