json.array!(@marcadores) do |marcador|
  json.extract! marcador, :id, :nome
  json.url marcador_url(marcador, format: :json)
end
