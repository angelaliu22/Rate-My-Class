json.array!(@educations) do |education|
  json.extract! education, :id, :start_date, :end_date
  json.url education_url(education, format: :json)
end
