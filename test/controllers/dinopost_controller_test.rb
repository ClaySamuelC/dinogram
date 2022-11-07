require "test_helper"

class DinopostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dinopost_index_url
    assert_response :success
  end
end
