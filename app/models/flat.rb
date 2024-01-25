class Flat < ApplicationRecord

  validates :name, :price_per_night, :address, :number_of_guests, :description, presence: true
end
