require 'test_helper'

class BrunchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brunch = brunches(:one)
  end

  test "should get index" do
    get brunches_url
    assert_response :success
  end

  test "should get new" do
    get new_brunch_url
    assert_response :success
  end

  test "should create brunch" do
    assert_difference('Brunche.count') do
      post brunches_url, params: { brunch: { address: @brunch.address, city: @brunch.city, name: @brunch.name, user_id: @brunch.user_id } }
    end

    assert_redirected_to brunch_url(Brunche.last)
  end

  test "should show brunch" do
    get brunch_url(@brunch)
    assert_response :success
  end

  test "should get edit" do
    get edit_brunch_url(@brunch)
    assert_response :success
  end

  test "should update brunch" do
    patch brunch_url(@brunch), params: { brunch: { address: @brunch.address, city: @brunch.city, name: @brunch.name, user_id: @brunch.user_id } }
    assert_redirected_to brunch_url(@brunch)
  end

  test "should destroy brunch" do
    assert_difference('Brunche.count', -1) do
      delete brunch_url(@brunch)
    end

    assert_redirected_to brunches_url
  end
end
