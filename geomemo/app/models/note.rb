class Note < ApplicationRecord
  belongs_to :notebook
  belongs_to :location
  belongs_to :user

  validates_presence_of :content
end
