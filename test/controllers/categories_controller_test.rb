require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  
  # ensure that we have all routes and that these routes are accessible
  
  def setup
    @category = Category.create(name: "sports")
    @user = User.create(username: "admin", email: "admin@example.com", password: "password", admin: true)
    # at the controller level we can directly access session
  end
  
  test "should get categories index" do
    get :index
    assert_response :success
  end
  
  test "test should get new" do
    # simulate that admin is loged in
    session[:user_id] = @user.id
    get :new
    assert_response :success
  end
  
  test "should get show" do
    get :show, params: {'id' => @category.id}
    assert_response :success
  end
  
  test "should redirect create when admin not logged in" do
    assert_no_difference 'Category.count' do
      post :create, category: { name: "sports" }
    end
    assert_redirected_to categories_path
  end
  
end