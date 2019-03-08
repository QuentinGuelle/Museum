require "application_system_test_case"

class BlackandwhitesTest < ApplicationSystemTestCase
  setup do
    @blackandwhite = blackandwhites(:one)
  end

  test "visiting the index" do
    visit blackandwhites_url
    assert_selector "h1", text: "Blackandwhites"
  end

  test "creating a Blackandwhite" do
    visit blackandwhites_url
    click_on "New Blackandwhite"

    click_on "Create Blackandwhite"

    assert_text "Blackandwhite was successfully created"
    click_on "Back"
  end

  test "updating a Blackandwhite" do
    visit blackandwhites_url
    click_on "Edit", match: :first

    click_on "Update Blackandwhite"

    assert_text "Blackandwhite was successfully updated"
    click_on "Back"
  end

  test "destroying a Blackandwhite" do
    visit blackandwhites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blackandwhite was successfully destroyed"
  end
end
