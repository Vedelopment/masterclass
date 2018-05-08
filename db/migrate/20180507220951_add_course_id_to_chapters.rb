class AddCourseIdToChapters < ActiveRecord::Migration[5.0]
  def change
      add_reference :chapters, :course, foreign_key: true
  end
end
