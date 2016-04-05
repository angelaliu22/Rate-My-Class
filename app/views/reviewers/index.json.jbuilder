json.array!(@reviewers) do |reviewer|
  json.extract! reviewer, :id, :username, :password, :major, :year
  json.url reviewer_url(reviewer, format: :json)
end
