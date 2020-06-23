class Location < ApplicationRecord
    validates_presence_of :videotheque, :date_emprunt

    belongs_to :videotheque
    belongs_to :user
end
