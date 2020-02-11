class Location < ApplicationRecord
  has_many :notes
  has_many :notebooks, through: :notes
end
