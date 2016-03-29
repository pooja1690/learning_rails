require 'test_helper'

class UserWithHallsControllerTest < ActionController::TestCase
  setup do
    @user_with_hall = user_with_halls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_with_halls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_with_hall" do
    assert_difference('UserWithHall.count') do
      post :create, user_with_hall: { Hall_ID: @user_with_hall.Hall_ID, email: @user_with_hall.email }
    end

    assert_redirected_to user_with_hall_path(assigns(:user_with_hall))
  end

  test "should show user_with_hall" do
    get :show, id: @user_with_hall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_with_hall
    assert_response :success
  end

  test "should update user_with_hall" do
    patch :update, id: @user_with_hall, user_with_hall: { Hall_ID: @user_with_hall.Hall_ID, email: @user_with_hall.email }
    assert_redirected_to user_with_hall_path(assigns(:user_with_hall))
  end

  test "should destroy user_with_hall" do
    assert_difference('UserWithHall.count', -1) do
      delete :destroy, id: @user_with_hall
    end

    assert_redirected_to user_with_halls_path
  end
end
