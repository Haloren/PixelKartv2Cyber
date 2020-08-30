class Kart < ApplicationRecord
  belongs_to :club
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :name, presence: true, uniqueness: true
  validates :driver, presence: true
  validates :body, presence: true
  validates :wheels, presence: true

  def average_rating
      self.reviews.average(:rating)
  end

end
