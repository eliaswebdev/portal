require 'test_helper'

class MarcadoresControllerTest < ActionController::TestCase
  setup do
    @marcador = marcadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marcadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marcador" do
    assert_difference('Marcador.count') do
      post :create, marcador: { nome: @marcador.nome }
    end

    assert_redirected_to marcador_path(assigns(:marcador))
  end

  test "should show marcador" do
    get :show, id: @marcador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marcador
    assert_response :success
  end

  test "should update marcador" do
    patch :update, id: @marcador, marcador: { nome: @marcador.nome }
    assert_redirected_to marcador_path(assigns(:marcador))
  end

  test "should destroy marcador" do
    assert_difference('Marcador.count', -1) do
      delete :destroy, id: @marcador
    end

    assert_redirected_to marcadores_path
  end
end
