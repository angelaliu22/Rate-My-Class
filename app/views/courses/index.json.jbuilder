json.array!(@courses) do |course|
  json.extract! course, :id, :start_date, :end_date, :name, :description, :units
  json.url course_url(course, format: :json)
end
