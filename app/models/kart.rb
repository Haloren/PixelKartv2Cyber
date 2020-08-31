class Kart < ApplicationRecord
  belongs_to :club
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  validates :name, presence: true, uniqueness: true
  validates :driver, presence: true
  validates :body, presence: true
  validates :wheels, presence: true

  DRIVERS = ['Knome', 'Trooper', 'Racer']
  BODIES = ['Magnam', 'CyTruck', 'Panda']
  WHEELS = ['White Star', 'Solid', 'Steele']

  accepts_nested_attributes_for :club

  def club_attributes=(attributes)
    self.club = Club.find_or_create_by(attributes) if !attributes['name'].empty?
    self.club
  end

  def average_rating
      self.reviews.average(:rating)
  end

end
