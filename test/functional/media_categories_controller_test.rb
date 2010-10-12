require 'test_helper'

class MediaCategoriesControllerTest < ActionController::TestCase
  setup do
    @media_category = media_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_category" do
    assert_difference('MediaCategory.count') do
      post :create, :media_category => @media_category.attributes
    end

    assert_redirected_to media_category_path(assigns(:media_category))
  end

  test "should show media_category" do
    get :show, :id => @media_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @media_category.to_param
    assert_response :success
  end

  test "should update media_category" do
    put :update, :id => @media_category.to_param, :media_category => @media_category.attributes
    assert_redirected_to media_category_path(assigns(:media_category))
  end

  test "should destroy media_category" do
    assert_difference('MediaCategory.count', -1) do
      delete :destroy, :id => @media_category.to_param
    end

    assert_redirected_to media_categories_path
  end
end
