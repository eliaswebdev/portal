require 'test_helper'

class NoticiasControllerTest < ActionController::TestCase
  setup do
    @noticia = noticias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:noticias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create noticia" do
    assert_difference('Noticia.count') do
      post :create, noticia: { conteudo: @noticia.conteudo, data_publicacao: @noticia.data_publicacao, editoria_id: @noticia.editoria_id, imagem: @noticia.imagem, status: @noticia.status, subtitulo: @noticia.subtitulo, titulo: @noticia.titulo, usuario_id: @noticia.usuario_id }
    end

    assert_redirected_to noticia_path(assigns(:noticia))
  end

  test "should show noticia" do
    get :show, id: @noticia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @noticia
    assert_response :success
  end

  test "should update noticia" do
    patch :update, id: @noticia, noticia: { conteudo: @noticia.conteudo, data_publicacao: @noticia.data_publicacao, editoria_id: @noticia.editoria_id, imagem: @noticia.imagem, status: @noticia.status, subtitulo: @noticia.subtitulo, titulo: @noticia.titulo, usuario_id: @noticia.usuario_id }
    assert_redirected_to noticia_path(assigns(:noticia))
  end

  test "should destroy noticia" do
    assert_difference('Noticia.count', -1) do
      delete :destroy, id: @noticia
    end

    assert_redirected_to noticias_path
  end
end
