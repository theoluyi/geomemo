class Location < ApplicationRecord
  has_many :notes, dependent: :nullify
  has_many :notebooks, through: :notes

  validates_presence_of :name
  # validates :name, presence: true

def reassign_default_location_of_notes
  self.notes.map do |note|
    note.location_id = Location.first.id  
  end
end

end
