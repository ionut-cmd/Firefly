require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get homepage_index_url
    assert_response :success
  end
end
