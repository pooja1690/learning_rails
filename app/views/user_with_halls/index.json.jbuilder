json.array!(@user_with_halls) do |user_with_hall|
  json.extract! user_with_hall, :id, :email, :Hall_ID
  json.url user_with_hall_url(user_with_hall, format: :json)
end
