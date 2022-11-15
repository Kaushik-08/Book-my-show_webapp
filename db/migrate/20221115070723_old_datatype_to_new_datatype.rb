class OldDatatypeToNewDatatype < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :movie_duration, :string

  end
end
