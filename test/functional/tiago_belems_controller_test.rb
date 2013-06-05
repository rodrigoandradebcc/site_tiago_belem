require 'test_helper'

class TiagoBelemsControllerTest < ActionController::TestCase
  setup do
    @tiago_belem = tiago_belems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiago_belems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiago_belem" do
    assert_difference('TiagoBelem.count') do
      post :create, tiago_belem: { content: @tiago_belem.content }
    end

    assert_redirected_to tiago_belem_path(assigns(:tiago_belem))
  end

  test "should show tiago_belem" do
    get :show, id: @tiago_belem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiago_belem
    assert_response :success
  end

  test "should update tiago_belem" do
    put :update, id: @tiago_belem, tiago_belem: { content: @tiago_belem.content }
    assert_redirected_to tiago_belem_path(assigns(:tiago_belem))
  end

  test "should destroy tiago_belem" do
    assert_difference('TiagoBelem.count', -1) do
      delete :destroy, id: @tiago_belem
    end

    assert_redirected_to tiago_belems_path
  end
end
