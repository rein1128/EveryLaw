require 'test_helper'

class PointsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get points_new_url
    assert_response :success
  end

end
