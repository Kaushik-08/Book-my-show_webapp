class Theater < ApplicationRecord
    has_many :shows
    has_many :show_timings
    has_many :bookings
end
