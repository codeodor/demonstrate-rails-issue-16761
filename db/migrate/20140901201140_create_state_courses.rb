class CreateStateCourses < ActiveRecord::Migration
  def change
    create_table :state_courses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
