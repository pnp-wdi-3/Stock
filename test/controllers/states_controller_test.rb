require 'test_helper'

class StatesControllerTest < ActionDispatch::IntegrationTest
  test "should get expired" do
    get states_expired_url
    assert_response :success
  end

  test "should get almost_exp" do
    get states_almost_exp_url
    assert_response :success
  end

  test "should get good" do
    get states_good_url
    assert_response :success
  end

end
