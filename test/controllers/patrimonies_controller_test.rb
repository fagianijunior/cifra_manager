require 'test_helper'

class PatrimoniesControllerTest < ActionController::TestCase
  setup do
    @patrimony = patrimonies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patrimonies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patrimony" do
    assert_difference('Patrimony.count') do
      post :create, patrimony: { date_of_entry: @patrimony.date_of_entry, date_of_exit: @patrimony.date_of_exit, defect: @patrimony.defect, department_id: @patrimony.department_id, item: @patrimony.item, more_info: @patrimony.more_info, price: @patrimony.price }
    end

    assert_redirected_to patrimony_path(assigns(:patrimony))
  end

  test "should show patrimony" do
    get :show, id: @patrimony
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patrimony
    assert_response :success
  end

  test "should update patrimony" do
    patch :update, id: @patrimony, patrimony: { date_of_entry: @patrimony.date_of_entry, date_of_exit: @patrimony.date_of_exit, defect: @patrimony.defect, department_id: @patrimony.department_id, item: @patrimony.item, more_info: @patrimony.more_info, price: @patrimony.price }
    assert_redirected_to patrimony_path(assigns(:patrimony))
  end

  test "should destroy patrimony" do
    assert_difference('Patrimony.count', -1) do
      delete :destroy, id: @patrimony
    end

    assert_redirected_to patrimonies_path
  end
end
