class Location < ApplicationRecord
    belongs_to :videotheque
    belongs_to :user
end
