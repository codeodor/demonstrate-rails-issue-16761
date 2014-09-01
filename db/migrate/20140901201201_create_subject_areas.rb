class CreateSubjectAreas < ActiveRecord::Migration
  def change
    create_table :subject_areas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
