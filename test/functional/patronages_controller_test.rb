require 'test_helper'

class PatronagesControllerTest < ActionController::TestCase
  setup do
    @patronage = patronages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patronages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patronage" do
    assert_difference('Patronage.count') do
      post :create, patronage: { link: @patronage.link }
    end

    assert_redirected_to patronage_path(assigns(:patronage))
  end

  test "should show patronage" do
    get :show, id: @patronage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patronage
    assert_response :success
  end

  test "should update patronage" do
    put :update, id: @patronage, patronage: { link: @patronage.link }
    assert_redirected_to patronage_path(assigns(:patronage))
  end

  test "should destroy patronage" do
    assert_difference('Patronage.count', -1) do
      delete :destroy, id: @patronage
    end

    assert_redirected_to patronages_path
  end
end
