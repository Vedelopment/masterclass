class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.integer :number
      t.string :title
      t.text :desc
      t.integer :run_time
      t.text :topics

      t.timestamps
    end
  end
end
