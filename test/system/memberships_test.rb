require "application_system_test_case"

class MembershipsTest < ApplicationSystemTestCase
  setup do
    @membership = memberships(:one)
  end

  test "visiting the index" do
    visit memberships_url
    assert_selector "h1", text: "Memberships"
  end

  test "should create membership" do
    visit memberships_url
    click_on "New membership"

    fill_in "Address", with: @membership.address
    fill_in "Contact", with: @membership.contact
    fill_in "Date of birth", with: @membership.date_of_birth
    fill_in "Gender", with: @membership.gender
    fill_in "Mem id", with: @membership.mem_ID
    fill_in "Mem name", with: @membership.mem_name
    click_on "Create Membership"

    assert_text "Membership was successfully created"
    click_on "Back"
  end

  test "should update Membership" do
    visit membership_url(@membership)
    click_on "Edit this membership", match: :first

    fill_in "Address", with: @membership.address
    fill_in "Contact", with: @membership.contact
    fill_in "Date of birth", with: @membership.date_of_birth
    fill_in "Gender", with: @membership.gender
    fill_in "Mem id", with: @membership.mem_ID
    fill_in "Mem name", with: @membership.mem_name
    click_on "Update Membership"

    assert_text "Membership was successfully updated"
    click_on "Back"
  end

  test "should destroy Membership" do
    visit membership_url(@membership)
    click_on "Destroy this membership", match: :first

    assert_text "Membership was successfully destroyed"
  end
end
