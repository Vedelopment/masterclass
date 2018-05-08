class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.boolean :avail
      t.datetime :avail_date
      t.string :lg_thumb
      t.string :sm_thumb
      t.string :workbook
      t.string :cm_intro_title
      t.text :cm_intro_desc
      t.string :cm_less_logo
      t.string :cm_less_title
      t.string :cm_less_desc
      t.string :cm_excl_logo
      t.string :cm_excl_title
      t.string :cm_excl_desc
      t.string :cm_info_img

      t.timestamps
    end
  end
end
