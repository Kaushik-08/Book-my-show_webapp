class AdddColoumToNewColoum < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :ticket_price, :string

  end
end
