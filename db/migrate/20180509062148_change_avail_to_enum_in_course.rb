class ChangeAvailToEnumInCourse < ActiveRecord::Migration[5.0]
  def change
      change_column :courses, :avail, :integer, default: 0, index: true
  end
end
