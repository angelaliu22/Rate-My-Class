json.array!(@reviews) do |review|
  json.extract! review, :id, :date
  json.url review_url(review, format: :json)
end
