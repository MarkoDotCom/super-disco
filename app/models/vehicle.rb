class Vehicle < ApplicationRecord
    validates :vehicle_identifier, uniqueness: true
    has_many :gps
end
