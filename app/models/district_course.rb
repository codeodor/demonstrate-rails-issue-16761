class DistrictCourse < ActiveRecord::Base
  default_scope ->{ includes(:state_course).references(:state_course).order('district_courses.name, state_courses.name')}
  belongs_to :district
  belongs_to :subject_area
  belongs_to :state_course
end
