class Film < ApplicationRecord

    validates_presence_of :titre, :date_sortie
    validates :titre, length: { minimum: 3, maximum: 50 }, uniqueness: true

    has_many :videotheques
    has_many :users, through: :videotheques
end
