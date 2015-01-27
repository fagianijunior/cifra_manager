require 'test_helper'

class PatrimonyItemCategoriesControllerTest < ActionController::TestCase
  setup do
    @patrimony_item_category = patrimony_item_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patrimony_item_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patrimony_item_category" do
    assert_difference('PatrimonyItemCategory.count') do
      post :create, patrimony_item_category: { category: @patrimony_item_category.category }
    end

    assert_redirected_to patrimony_item_category_path(assigns(:patrimony_item_category))
  end

  test "should show patrimony_item_category" do
    get :show, id: @patrimony_item_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patrimony_item_category
    assert_response :success
  end

  test "should update patrimony_item_category" do
    patch :update, id: @patrimony_item_category, patrimony_item_category: { category: @patrimony_item_category.category }
    assert_redirected_to patrimony_item_category_path(assigns(:patrimony_item_category))
  end

  test "should destroy patrimony_item_category" do
    assert_difference('PatrimonyItemCategory.count', -1) do
      delete :destroy, id: @patrimony_item_category
    end

    assert_redirected_to patrimony_item_categories_path
  end
end
