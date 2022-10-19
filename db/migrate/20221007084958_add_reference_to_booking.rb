class AddReferenceToBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :movie , on_delete: :cascade, on_update: :cascade
    add_reference :bookings, :theater , on_delete: :cascade, on_update: :cascade
    add_reference :bookings, :show_timing , on_delete: :cascade, on_update: :cascade
  end
end
