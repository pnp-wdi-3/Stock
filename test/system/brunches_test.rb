require "application_system_test_case"

class BrunchesTest < ApplicationSystemTestCase
  setup do
    @brunch = brunches(:one)
  end

  test "visiting the index" do
    visit brunches_url
    assert_selector "h1", text: "Brunches"
  end

  test "creating a Brunche" do
    visit brunches_url
    click_on "New Brunche"

    fill_in "Address", with: @brunch.address
    fill_in "City", with: @brunch.city
    fill_in "Name", with: @brunch.name
    fill_in "User", with: @brunch.user_id
    click_on "Create Brunche"

    assert_text "Brunche was successfully created"
    click_on "Back"
  end

  test "updating a Brunche" do
    visit brunches_url
    click_on "Edit", match: :first

    fill_in "Address", with: @brunch.address
    fill_in "City", with: @brunch.city
    fill_in "Name", with: @brunch.name
    fill_in "User", with: @brunch.user_id
    click_on "Update Brunche"

    assert_text "Brunche was successfully updated"
    click_on "Back"
  end

  test "destroying a Brunche" do
    visit brunches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Brunche was successfully destroyed"
  end
end
