class CreateShowTimings < ActiveRecord::Migration[6.1]
  def change
    create_table :show_timings do |t|
      t.belongs_to :show, null: false, foreign_key: true
      t.string :show_timing 
      t.timestamps
    end
  end
end
