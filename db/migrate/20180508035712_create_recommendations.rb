class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|
        t.belongs_to :recommendation, class_name: "Course", foreign_key: "parent_course_id"
        t.belongs_to :parent_course, class_name: "Course", foreign_key: "recommendation_id"
        t.timestamps
    end
  end
end
