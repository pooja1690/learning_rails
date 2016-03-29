require 'test_helper'

class HallDetailsControllerTest < ActionController::TestCase
  setup do
    @hall_detail = hall_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hall_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hall_detail" do
    assert_difference('HallDetail.count') do
      post :create, hall_detail: { Address: @hall_detail.Address, City: @hall_detail.City, Contact_Email: @hall_detail.Contact_Email, Hall_ID: @hall_detail.Hall_ID, Hall_Name: @hall_detail.Hall_Name, Hall_Type: @hall_detail.Hall_Type, Phone_Number: @hall_detail.Phone_Number, State: @hall_detail.State }
    end

    assert_redirected_to hall_detail_path(assigns(:hall_detail))
  end

  test "should show hall_detail" do
    get :show, id: @hall_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hall_detail
    assert_response :success
  end

  test "should update hall_detail" do
    patch :update, id: @hall_detail, hall_detail: { Address: @hall_detail.Address, City: @hall_detail.City, Contact_Email: @hall_detail.Contact_Email, Hall_ID: @hall_detail.Hall_ID, Hall_Name: @hall_detail.Hall_Name, Hall_Type: @hall_detail.Hall_Type, Phone_Number: @hall_detail.Phone_Number, State: @hall_detail.State }
    assert_redirected_to hall_detail_path(assigns(:hall_detail))
  end

  test "should destroy hall_detail" do
    assert_difference('HallDetail.count', -1) do
      delete :destroy, id: @hall_detail
    end

    assert_redirected_to hall_details_path
  end
end
