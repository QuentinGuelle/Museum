require "application_system_test_case"

class RarchitecturesTest < ApplicationSystemTestCase
  setup do
    @rarchitecture = rarchitectures(:one)
  end

  test "visiting the index" do
    visit rarchitectures_url
    assert_selector "h1", text: "Rarchitectures"
  end

  test "creating a Rarchitecture" do
    visit rarchitectures_url
    click_on "New Rarchitecture"

    fill_in "Description", with: @rarchitecture.description
    fill_in "Link", with: @rarchitecture.link
    fill_in "Location", with: @rarchitecture.location
    click_on "Create Rarchitecture"

    assert_text "Rarchitecture was successfully created"
    click_on "Back"
  end

  test "updating a Rarchitecture" do
    visit rarchitectures_url
    click_on "Edit", match: :first

    fill_in "Description", with: @rarchitecture.description
    fill_in "Link", with: @rarchitecture.link
    fill_in "Location", with: @rarchitecture.location
    click_on "Update Rarchitecture"

    assert_text "Rarchitecture was successfully updated"
    click_on "Back"
  end

  test "destroying a Rarchitecture" do
    visit rarchitectures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rarchitecture was successfully destroyed"
  end
end
