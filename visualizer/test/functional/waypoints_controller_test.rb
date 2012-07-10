require 'test_helper'

class WaypointsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
