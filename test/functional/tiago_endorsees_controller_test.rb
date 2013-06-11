require 'test_helper'

class TiagoEndorseesControllerTest < ActionController::TestCase
  setup do
    @tiago_endorsee = tiago_endorsees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiago_endorsees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiago_endorsee" do
    assert_difference('TiagoEndorsee.count') do
      post :create, tiago_endorsee: { link: @tiago_endorsee.link }
    end

    assert_redirected_to tiago_endorsee_path(assigns(:tiago_endorsee))
  end

  test "should show tiago_endorsee" do
    get :show, id: @tiago_endorsee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiago_endorsee
    assert_response :success
  end

  test "should update tiago_endorsee" do
    put :update, id: @tiago_endorsee, tiago_endorsee: { link: @tiago_endorsee.link }
    assert_redirected_to tiago_endorsee_path(assigns(:tiago_endorsee))
  end

  test "should destroy tiago_endorsee" do
    assert_difference('TiagoEndorsee.count', -1) do
      delete :destroy, id: @tiago_endorsee
    end

    assert_redirected_to tiago_endorsees_path
  end
end
