class User < ApplicationRecord
    has_many :courses, through: :user_courses
end
