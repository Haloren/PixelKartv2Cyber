class User < ApplicationRecord
    has_secure_password
    
    has_many :reviews
    has_many :reviewed_karts, through: :reviews, source: :kart

    has_many :karts
end
