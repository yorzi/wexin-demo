json.array!(@people) do |person|
  json.extract! person, :id, :name, :weibo, :phone, :email, :description, :interest, :twitter
  json.url person_url(person, format: :json)
end
