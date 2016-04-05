json.array!(@professorships) do |professorship|
  json.extract! professorship, :id, :start_date, :end_date
  json.url professorship_url(professorship, format: :json)
end
