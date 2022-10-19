class AddColoumToNewColoum < ActiveRecord::Migration[6.1]
  def change
    add_column :show_timings, :shows_timings, :string
  end
end
