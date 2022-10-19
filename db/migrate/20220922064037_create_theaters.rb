class CreateTheaters < ActiveRecord::Migration[6.1]
  def change
    create_table :theaters do |t|
      t.string :theater_name
      t.text :theater_location

      t.timestamps
    end
  end
end
