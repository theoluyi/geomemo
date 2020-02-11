class Notebook < ApplicationRecord
  has_many :notes
  has_many :locations, through: :notes
end
