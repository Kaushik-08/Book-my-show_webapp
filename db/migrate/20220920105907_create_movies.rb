class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.text :about_movie
      t.string :movie_format
      t.integer :movie_duration
      t.string :movie_language

      t.timestamps
    end
  end
end
