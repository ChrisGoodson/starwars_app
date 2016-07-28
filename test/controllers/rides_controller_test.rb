require 'test_helper'

class RidesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rides_new_url
    assert_response :success
  end

  test "should get show" do
    get rides_show_url
    assert_response :success
  end

end
