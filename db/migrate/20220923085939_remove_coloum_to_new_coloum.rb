class RemoveColoumToNewColoum < ActiveRecord::Migration[6.1]
  def change
    remove_column :show_timings, :show_timings
  end
end
