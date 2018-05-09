class Course < ApplicationRecord
    has_one :instructor
    has_many :chapters
    has_many :users, through: :user_courses

    enum avail: {available: 0, coming_soon: 1}

    has_many :recommenders, through: :recommender_recommendations, source: :recommender
    has_many :recommender_recommendations, foreign_key: :recommendee_id, class_name: "Recommendation"

    has_many :recommendees, through: :recommendee_recommendations, source: :recommendee
    has_many :recommendee_recommendations, foreign_key: :recommender_id, class_name: "Recommendation"
end
