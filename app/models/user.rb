class User < ApplicationRecord
    has_secure_password
    
    has_many :reviews
    has_many :reviewed_karts, through: :reviews, source: :kart

    has_many :karts

    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
end
