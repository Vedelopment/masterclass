class Recommendation < ApplicationRecord
    belongs_to :recommender, foreign_key: "recommender_id", class_name: "Course"
    belongs_to :recommendee, foreign_key: "recommendee_id", class_name: "Course"
end
