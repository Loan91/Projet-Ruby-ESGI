class User < ApplicationRecord

  has_many :locations
  has_many :videotheques
  has_many :films, through: :videotheques

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
