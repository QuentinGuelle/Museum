require "application_system_test_case"

class ArchitecturesTest < ApplicationSystemTestCase
  setup do
    @architecture = architectures(:one)
  end

  test "visiting the index" do
    visit architectures_url
    assert_selector "h1", text: "Architectures"
  end

  test "creating a Architecture" do
    visit architectures_url
    click_on "New Architecture"

    click_on "Create Architecture"

    assert_text "Architecture was successfully created"
    click_on "Back"
  end

  test "updating a Architecture" do
    visit architectures_url
    click_on "Edit", match: :first

    click_on "Update Architecture"

    assert_text "Architecture was successfully updated"
    click_on "Back"
  end

  test "destroying a Architecture" do
    visit architectures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Architecture was successfully destroyed"
  end
end
