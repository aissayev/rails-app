require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  
  # ensure that we have all routes and that these routes are accessible
  
  def setup
    @category = Category.create(name: "sports")
  end
  
  test "should get categories index" do
    get :index
    assert_response :success
  end
  
  test "test should get new" do
    get :new
    assert_response :success
  end
  
  test "should get show" do
    get :show, params: {'id' => @category.id}
    assert_response :success
  end
  
end