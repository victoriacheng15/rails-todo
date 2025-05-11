require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should have h1 with welcome message" do
    get root_url
    assert_select "h1", "Welcome to the Todo App"
  end
end
