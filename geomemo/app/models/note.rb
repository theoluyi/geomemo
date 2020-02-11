class Note < ApplicationRecord
  belongs_to :notebook
  belongs_to :location

  validates_presence_of :content
end
