require 'test_helper'

class RepertoiresControllerTest < ActionController::TestCase
  setup do
    @repertoire = repertoires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repertoires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repertoire" do
    assert_difference('Repertoire.count') do
      post :create, repertoire: { music_id: @repertoire.music_id, order: @repertoire.order }
    end

    assert_redirected_to repertoire_path(assigns(:repertoire))
  end

  test "should show repertoire" do
    get :show, id: @repertoire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repertoire
    assert_response :success
  end

  test "should update repertoire" do
    patch :update, id: @repertoire, repertoire: { music_id: @repertoire.music_id, order: @repertoire.order }
    assert_redirected_to repertoire_path(assigns(:repertoire))
  end

  test "should destroy repertoire" do
    assert_difference('Repertoire.count', -1) do
      delete :destroy, id: @repertoire
    end

    assert_redirected_to repertoires_path
  end
end
