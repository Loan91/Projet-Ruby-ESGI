class Film < ApplicationRecord


    has_many :videotheques
    has_many :users, through: :videotheques
end
