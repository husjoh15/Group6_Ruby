json.array!(@games) do |game|
  json.extract! game, :id, :name, :description, :price, :image_url
  json.url game_url(game, format: :json)
end
