class Course < ApplicationRecord
    has_one :instructor
    has_many :chapters
    has_many :users, through: :user_courses
end
