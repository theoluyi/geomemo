class User < ApplicationRecord
    has_many :notes
    has_many :notes, through: :notebooks
    has_many :notes, through: :locations

    has_secure_password

    
end
