require 'test_helper'

class AudioguideInformsControllerTest < ActionController::TestCase
  setup do
    @audioguide_inform = audioguide_informs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audioguide_informs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audioguide_inform" do
    assert_difference('AudioguideInform.count') do
      post :create, audioguide_inform: { audioguide_id: @audioguide_inform.audioguide_id, description: @audioguide_inform.description, name: @audioguide_inform.name, text: @audioguide_inform.text }
    end

    assert_redirected_to audioguide_inform_path(assigns(:audioguide_inform))
  end

  test "should show audioguide_inform" do
    get :show, id: @audioguide_inform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audioguide_inform
    assert_response :success
  end

  test "should update audioguide_inform" do
    patch :update, id: @audioguide_inform, audioguide_inform: { audioguide_id: @audioguide_inform.audioguide_id, description: @audioguide_inform.description, name: @audioguide_inform.name, text: @audioguide_inform.text }
    assert_redirected_to audioguide_inform_path(assigns(:audioguide_inform))
  end

  test "should destroy audioguide_inform" do
    assert_difference('AudioguideInform.count', -1) do
      delete :destroy, id: @audioguide_inform
    end

    assert_redirected_to audioguide_informs_path
  end
end
