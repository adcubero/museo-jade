require 'test_helper'

class AudioguidesControllerTest < ActionController::TestCase
  setup do
    @audioguide = audioguides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audioguides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audioguide" do
    assert_difference('Audioguide.count') do
      post :create, audioguide: { audio: @audioguide.audio, description: @audioguide.description, file: @audioguide.file, piece_id: @audioguide.piece_id }
    end

    assert_redirected_to audioguide_path(assigns(:audioguide))
  end

  test "should show audioguide" do
    get :show, id: @audioguide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audioguide
    assert_response :success
  end

  test "should update audioguide" do
    patch :update, id: @audioguide, audioguide: { audio: @audioguide.audio, description: @audioguide.description, file: @audioguide.file, piece_id: @audioguide.piece_id }
    assert_redirected_to audioguide_path(assigns(:audioguide))
  end

  test "should destroy audioguide" do
    assert_difference('Audioguide.count', -1) do
      delete :destroy, id: @audioguide
    end

    assert_redirected_to audioguides_path
  end
end
