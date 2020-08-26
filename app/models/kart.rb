class Kart < ApplicationRecord
  belongs_to :club
  belongs_to :user

  has_many :reviews
  has_many :users, through: :reviews

end
