require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  # Test for category model
  # Category model was build using TDD (Test Driven Development)
  
  # Runs before any TestCase
  def setup
    @category = Category.new(name: "sports")
  end
  
  test "category should be valid" do
    # can we instantiate new category? and if it is valid
    assert @category.valid?
  end
  
  test "name should be present" do
    @category.name = " "
    assert_not @category.valid?
  end
  
  test "name should be unique" do
    @category.save
    @category2 = Category.new(name: "sports")
    assert_not @category2.valid?
  end
  
  # no more than 25 characters long
  test "name should not be too long" do
    @category.name = "a" * 26
    assert_not @category.valid?
  end
  
  # minimum three characters long
  test "name should not be too short" do
    @category.name = "aa"
    assert_not @category.valid?
  end
  
end