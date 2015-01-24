json.array!(@users) do |user|
  json.extract! user, :id, :name, :post_id, :comment_id
  json.url user_url(user, format: :json)
end
