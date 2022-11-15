class RemoveColoumToNewColoum < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :ticket_price
  end
end
