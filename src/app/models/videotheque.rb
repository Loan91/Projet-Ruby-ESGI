class Videotheque < ApplicationRecord
    belongs_to :user
    belongs_to :film
end
