class Hospital < ApplicationRecord
    has_many :employments
    has_many :doctors, through: :employments
end
