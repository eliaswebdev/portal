require 'ffaker'

100.times do 
	Usuario.create(
		nome: FFaker::NameBR.name,
		email: FFaker::Internet.email,
		senha: '1234567890',
		genero: [0, 1].shuffle.first,
	)
end


editorias = Editoria.create!([
	{nome: 'Política'},
	{nome: 'Economia'},
	{nome: 'Cultura'},
	{nome: 'Fofoca'},
	{nome: 'Esportes'},
	{nome: 'Concursos'},
])

marcadores = Marcador.create!([
	{nome: 'Crise Política'},
	{nome: 'Crise Economia'},
	{nome: 'Crise na Cultura'},
	{nome: 'Crise na Fofoca'},
	{nome: 'Crise Esportes'},
	{nome: 'Crise Concursos'},
])

10.times do |i|
	Noticia.create!(
		usuario_id: Usuario.all.order('RAND()').first.id, 
		editoria: Editoria.all.order('RAND()').first, 
		titulo: "Titulo da notícia numero #{i}", 
		subtitulo: "Subtitulo da notícia numero #{i}", 
		conteudo: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 
		data_publicacao: Time.now, 
		status: 1, 		
	)
end
