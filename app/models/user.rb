class User < ApplicationRecord
    has_many :foods
    has_many :recipes

    validates :name, presence: true, length: { in: 1..50 }
end
