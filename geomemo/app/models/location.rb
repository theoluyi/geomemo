class Location < ApplicationRecord
  has_many :notes
  has_many :notebooks, through: :notes

  validates_presence_of :name
  # validates :name, presence: true
end
