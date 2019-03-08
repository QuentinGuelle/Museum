require "application_system_test_case"

class RblackandwhitesTest < ApplicationSystemTestCase
  setup do
    @rblackandwhite = rblackandwhites(:one)
  end

  test "visiting the index" do
    visit rblackandwhites_url
    assert_selector "h1", text: "Rblackandwhites"
  end

  test "creating a Rblackandwhite" do
    visit rblackandwhites_url
    click_on "New Rblackandwhite"

    fill_in "Description", with: @rblackandwhite.description
    fill_in "Link", with: @rblackandwhite.link
    fill_in "Location", with: @rblackandwhite.location
    click_on "Create Rblackandwhite"

    assert_text "Rblackandwhite was successfully created"
    click_on "Back"
  end

  test "updating a Rblackandwhite" do
    visit rblackandwhites_url
    click_on "Edit", match: :first

    fill_in "Description", with: @rblackandwhite.description
    fill_in "Link", with: @rblackandwhite.link
    fill_in "Location", with: @rblackandwhite.location
    click_on "Update Rblackandwhite"

    assert_text "Rblackandwhite was successfully updated"
    click_on "Back"
  end

  test "destroying a Rblackandwhite" do
    visit rblackandwhites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rblackandwhite was successfully destroyed"
  end
end
