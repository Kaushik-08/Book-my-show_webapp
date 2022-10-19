class Movie < ApplicationRecord
    has_one_attached :header_image   
    has_many_attached :files 
    has_many :shows
    has_many :bookings
end
