require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
   
    @input_attributes = {
      :username     => "kush",
      :password     => "private",
      :password_confirmation => "private"
     }
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
      post :create, :user => @input_attributes #user: hashed_password: @user.hashed_password, salt: @user.salt, username: @user.username 
    end

    assert_redirected_to users_path   #assert_redirected_to user_path(assigns(:user))
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
  patch :update, id: @user, :user => @input_attributes   #user: { hashed_password: @user.hashed_password, salt: @user.salt, username: @user.username }
    assert_redirected_to users_path  #assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
