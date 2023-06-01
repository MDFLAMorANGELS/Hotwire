require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get create$" do
    get index_create$_url
    assert_response :success
  end
end
