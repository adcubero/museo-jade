require 'test_helper'

class PieceInformsControllerTest < ActionController::TestCase
  setup do
    @piece_inform = piece_informs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piece_informs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece_inform" do
    assert_difference('PieceInform.count') do
      post :create, piece_inform: { description: @piece_inform.description, language: @piece_inform.language, name: @piece_inform.name, piece_id: @piece_inform.piece_id }
    end

    assert_redirected_to piece_inform_path(assigns(:piece_inform))
  end

  test "should show piece_inform" do
    get :show, id: @piece_inform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piece_inform
    assert_response :success
  end

  test "should update piece_inform" do
    patch :update, id: @piece_inform, piece_inform: { description: @piece_inform.description, language: @piece_inform.language, name: @piece_inform.name, piece_id: @piece_inform.piece_id }
    assert_redirected_to piece_inform_path(assigns(:piece_inform))
  end

  test "should destroy piece_inform" do
    assert_difference('PieceInform.count', -1) do
      delete :destroy, id: @piece_inform
    end

    assert_redirected_to piece_informs_path
  end
end
