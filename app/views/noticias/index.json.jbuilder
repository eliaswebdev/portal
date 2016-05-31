json.array!(@noticias) do |noticia|
  json.extract! noticia, :id, :usuario_id, :editoria_id, :titulo, :subtitulo, :conteudo, :data_publicacao, :imagem, :status
  json.url noticia_url(noticia, format: :json)
end
