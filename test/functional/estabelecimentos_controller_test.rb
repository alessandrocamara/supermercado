require 'test_helper'

class EstabelecimentosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estabelecimentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estabelecimento" do
    assert_difference('Estabelecimento.count') do
      post :create, :estabelecimento => { }
    end

    assert_redirected_to estabelecimento_path(assigns(:estabelecimento))
  end

  test "should show estabelecimento" do
    get :show, :id => estabelecimentos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => estabelecimentos(:one).to_param
    assert_response :success
  end

  test "should update estabelecimento" do
    put :update, :id => estabelecimentos(:one).to_param, :estabelecimento => { }
    assert_redirected_to estabelecimento_path(assigns(:estabelecimento))
  end

  test "should destroy estabelecimento" do
    assert_difference('Estabelecimento.count', -1) do
      delete :destroy, :id => estabelecimentos(:one).to_param
    end

    assert_redirected_to estabelecimentos_path
  end
end
