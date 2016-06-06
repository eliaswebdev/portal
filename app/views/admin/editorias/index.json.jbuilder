json.array!(@editorias) do |editoria|
  json.extract! editoria, :id, :nome, :status
  json.url editoria_url(editoria, format: :json)
end
