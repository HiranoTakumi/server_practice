json.array!(@users) do |user|
  json.extract! user, :name, :score, :date
  json.url user_url(user, format: :json)
end
