json.array!(@district_courses) do |district_course|
  json.extract! district_course, :id, :name, :subject_id, :district_id, :state_course_id
  json.url district_course_url(district_course, format: :json)
end
