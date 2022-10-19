class DeleteColoumToOldColoum < ActiveRecord::Migration[6.1]
  def change
    remove_column :show_timings, :show_id
  end
end
