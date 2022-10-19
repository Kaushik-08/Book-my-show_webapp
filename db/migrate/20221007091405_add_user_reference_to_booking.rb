class AddUserReferenceToBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :user , on_delete: :cascade, on_update: :cascade
  end
end
