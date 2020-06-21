class Film < ApplicationRecord
    validates_presence_of :titre, :date_sortie
    validates :titre, length: { minimum: 3, maximum: 50 }
    validates :date_sortie
end
