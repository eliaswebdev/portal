require 'test_helper'

class EditoriasControllerTest < ActionController::TestCase
  setup do
    @editoria = editorias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:editorias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create editoria" do
    assert_difference('Editoria.count') do
      post :create, editoria: { nome: @editoria.nome, status: @editoria.status }
    end

    assert_redirected_to editoria_path(assigns(:editoria))
  end

  test "should show editoria" do
    get :show, id: @editoria
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @editoria
    assert_response :success
  end

  test "should update editoria" do
    patch :update, id: @editoria, editoria: { nome: @editoria.nome, status: @editoria.status }
    assert_redirected_to editoria_path(assigns(:editoria))
  end

  test "should destroy editoria" do
    assert_difference('Editoria.count', -1) do
      delete :destroy, id: @editoria
    end

    assert_redirected_to editorias_path
  end
end
