require 'test_helper'

class SocialNetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_net = social_nets(:one)
  end

  test "should get index" do
    get social_nets_url, as: :json
    assert_response :success
  end

  test "should create social_net" do
    assert_difference('SocialNet.count') do
      post social_nets_url, params: { social_net: { name: @social_net.name } }, as: :json
    end

    assert_response 201
  end

  test "should show social_net" do
    get social_net_url(@social_net), as: :json
    assert_response :success
  end

  test "should update social_net" do
    patch social_net_url(@social_net), params: { social_net: { name: @social_net.name } }, as: :json
    assert_response 200
  end

  test "should destroy social_net" do
    assert_difference('SocialNet.count', -1) do
      delete social_net_url(@social_net), as: :json
    end

    assert_response 204
  end
end
