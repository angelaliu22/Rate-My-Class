json.array!(@klasses) do |klass|
  json.extract! klass, :id, :year, :enrollment_size
  json.url klass_url(klass, format: :json)
end
