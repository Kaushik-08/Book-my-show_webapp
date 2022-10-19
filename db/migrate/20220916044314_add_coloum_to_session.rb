class AddColoumToSession < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastnamt, :string
    add_column :users, :phonenumber, :string
  end
end
