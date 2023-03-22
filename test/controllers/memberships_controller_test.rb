require "test_helper"

class MembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @membership = memberships(:one)
  end

  test "should get index" do
    get memberships_url
    assert_response :success
  end

  test "should get new" do
    get new_membership_url
    assert_response :success
  end

  test "should create membership" do
    assert_difference("Membership.count") do
      post memberships_url, params: { membership: { address: @membership.address, contact: @membership.contact, date_of_birth: @membership.date_of_birth, gender: @membership.gender, mem_ID: @membership.mem_ID, mem_name: @membership.mem_name } }
    end

    assert_redirected_to membership_url(Membership.last)
  end

  test "should show membership" do
    get membership_url(@membership)
    assert_response :success
  end

  test "should get edit" do
    get edit_membership_url(@membership)
    assert_response :success
  end

  test "should update membership" do
    patch membership_url(@membership), params: { membership: { address: @membership.address, contact: @membership.contact, date_of_birth: @membership.date_of_birth, gender: @membership.gender, mem_ID: @membership.mem_ID, mem_name: @membership.mem_name } }
    assert_redirected_to membership_url(@membership)
  end

  test "should destroy membership" do
    assert_difference("Membership.count", -1) do
      delete membership_url(@membership)
    end

    assert_redirected_to memberships_url
  end
end
