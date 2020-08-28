class Club < ApplicationRecord
    has_many :karts

    validates :name, presence: true, uniqueness: true
end
