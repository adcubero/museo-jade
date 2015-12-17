require 'test_helper'

class ExhibitionImagesControllerTest < ActionController::TestCase
  setup do
    @exhibition_image = exhibition_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibition_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibition_image" do
    assert_difference('ExhibitionImage.count') do
      post :create, exhibition_image: { file: @exhibition_image.file }
    end

    assert_redirected_to exhibition_image_path(assigns(:exhibition_image))
  end

  test "should show exhibition_image" do
    get :show, id: @exhibition_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exhibition_image
    assert_response :success
  end

  test "should update exhibition_image" do
    patch :update, id: @exhibition_image, exhibition_image: { file: @exhibition_image.file }
    assert_redirected_to exhibition_image_path(assigns(:exhibition_image))
  end

  test "should destroy exhibition_image" do
    assert_difference('ExhibitionImage.count', -1) do
      delete :destroy, id: @exhibition_image
    end

    assert_redirected_to exhibition_images_path
  end
end
