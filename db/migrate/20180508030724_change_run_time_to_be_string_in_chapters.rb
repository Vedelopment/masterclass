class ChangeRunTimeToBeStringInChapters < ActiveRecord::Migration[5.0]
  def change
      change_column :chapters, :run_time, :string
  end
end
