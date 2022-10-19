class Show < ApplicationRecord
  belongs_to :movie
  belongs_to :theater
  has_many :show_timings
end
