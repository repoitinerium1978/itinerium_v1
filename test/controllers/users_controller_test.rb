require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { ItineraryStatus: @user.ItineraryStatus, address: @user.address, balance: @user.balance, bio: @user.bio, dateBirth: @user.dateBirth, dateCreated: @user.dateCreated, email: @user.email, itinerariesAccepted: @user.itinerariesAccepted, itinerariesCompleted: @user.itinerariesCompleted, itinerariesRequested: @user.itinerariesRequested, login: @user.login, name: @user.name, password: @user.password, phoneNumber: @user.phoneNumber, photo: @user.photo, receiveNewsletter: @user.receiveNewsletter, status: @user.status, tagline: @user.tagline, tutorial: @user.tutorial, userType: @user.userType, web: @user.web }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { ItineraryStatus: @user.ItineraryStatus, address: @user.address, balance: @user.balance, bio: @user.bio, dateBirth: @user.dateBirth, dateCreated: @user.dateCreated, email: @user.email, itinerariesAccepted: @user.itinerariesAccepted, itinerariesCompleted: @user.itinerariesCompleted, itinerariesRequested: @user.itinerariesRequested, login: @user.login, name: @user.name, password: @user.password, phoneNumber: @user.phoneNumber, photo: @user.photo, receiveNewsletter: @user.receiveNewsletter, status: @user.status, tagline: @user.tagline, tutorial: @user.tutorial, userType: @user.userType, web: @user.web }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
