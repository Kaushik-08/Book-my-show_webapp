class ChangeColoumToNewColoum < ActiveRecord::Migration[6.1]
  def change
    rename_column :shows, :movies_id, :movie_id
    rename_column :shows, :theaters_id, :theater_id
    
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
