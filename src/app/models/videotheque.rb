class Videotheque < ApplicationRecord
    belongs_to :user
    belongs_to :film
    has_many :locations
end
