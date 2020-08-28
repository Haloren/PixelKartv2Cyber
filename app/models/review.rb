class Review < ApplicationRecord
  belongs_to :user
  belongs_to :kart

  validates :rating, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 4 }
  validates :kart, uniqueness: { scope: :user } # only one review should be allowed by a user

end
