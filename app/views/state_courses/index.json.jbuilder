json.array!(@state_courses) do |state_course|
  json.extract! state_course, :id, :name
  json.url state_course_url(state_course, format: :json)
end
