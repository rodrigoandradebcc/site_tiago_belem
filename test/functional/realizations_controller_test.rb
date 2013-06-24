require 'test_helper'

class RealizationsControllerTest < ActionController::TestCase
  setup do
    @realization = realizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realization" do
    assert_difference('Realization.count') do
      post :create, realization: { link: @realization.link }
    end

    assert_redirected_to realization_path(assigns(:realization))
  end

  test "should show realization" do
    get :show, id: @realization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realization
    assert_response :success
  end

  test "should update realization" do
    put :update, id: @realization, realization: { link: @realization.link }
    assert_redirected_to realization_path(assigns(:realization))
  end

  test "should destroy realization" do
    assert_difference('Realization.count', -1) do
      delete :destroy, id: @realization
    end

    assert_redirected_to realizations_path
  end
end
