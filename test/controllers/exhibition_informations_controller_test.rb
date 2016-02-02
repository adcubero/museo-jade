require 'test_helper'

class ExhibitionInformationsControllerTest < ActionController::TestCase
  setup do
    @exhibition_information = exhibition_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibition_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibition_information" do
    assert_difference('ExhibitionInformation.count') do
      post :create, exhibition_information: { description: @exhibition_information.description, exhibition_id: @exhibition_information.exhibition_id, language: @exhibition_information.language, miniDescription: @exhibition_information.miniDescription, name: @exhibition_information.name }
    end

    assert_redirected_to exhibition_information_path(assigns(:exhibition_information))
  end

  test "should show exhibition_information" do
    get :show, id: @exhibition_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exhibition_information
    assert_response :success
  end

  test "should update exhibition_information" do
    patch :update, id: @exhibition_information, exhibition_information: { description: @exhibition_information.description, exhibition_id: @exhibition_information.exhibition_id, language: @exhibition_information.language, miniDescription: @exhibition_information.miniDescription, name: @exhibition_information.name }
    assert_redirected_to exhibition_information_path(assigns(:exhibition_information))
  end

  test "should destroy exhibition_information" do
    assert_difference('ExhibitionInformation.count', -1) do
      delete :destroy, id: @exhibition_information
    end

    assert_redirected_to exhibition_informations_path
  end
end
