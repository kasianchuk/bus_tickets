class User < ApplicationRecord

  has_many :routes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
