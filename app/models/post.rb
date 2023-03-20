class Post < ApplicationRecord
    belongs_to :student
    has_many :comments
end
