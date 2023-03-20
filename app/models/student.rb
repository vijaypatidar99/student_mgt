class Student < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, through: :posts

    has_many :addresses, inverse_of: :student
    accepts_nested_attributes_for :addresses
end
