json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :start_date, :end_date
  json.url enrollment_url(enrollment, format: :json)
end
