class ChangeOldcoloumToNewcoloum < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :lastnamt, :lastname
  end
end
