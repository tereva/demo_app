require 'test_helper'

class MicropostesControllerTest < ActionController::TestCase
  setup do
    @microposte = micropostes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropostes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microposte" do
    assert_difference('Microposte.count') do
      post :create, microposte: { content: @microposte.content, user_id: @microposte.user_id }
    end

    assert_redirected_to microposte_path(assigns(:microposte))
  end

  test "should show microposte" do
    get :show, id: @microposte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microposte
    assert_response :success
  end

  test "should update microposte" do
    put :update, id: @microposte, microposte: { content: @microposte.content, user_id: @microposte.user_id }
    assert_redirected_to microposte_path(assigns(:microposte))
  end

  test "should destroy microposte" do
    assert_difference('Microposte.count', -1) do
      delete :destroy, id: @microposte
    end

    assert_redirected_to micropostes_path
  end
end
