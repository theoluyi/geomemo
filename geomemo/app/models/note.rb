class Note < ApplicationRecord
  belongs_to :notebook
  belongs_to :location
end
