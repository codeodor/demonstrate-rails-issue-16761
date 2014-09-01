class CreateDistrictCourses < ActiveRecord::Migration
  def change
    create_table :district_courses do |t|
      t.string :name
      t.integer :subject_id
      t.integer :district_id
      t.integer :state_course_id

      t.timestamps null: false
    end
  end
end
