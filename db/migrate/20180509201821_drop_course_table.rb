class DropCourseTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :course
  end
end
