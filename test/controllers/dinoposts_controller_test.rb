require "test_helper"

class DinopostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dinoposts_index_url
    assert_response :success
  end
end
