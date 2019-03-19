require "application_system_test_case"

class ConfigurationsTest < ApplicationSystemTestCase
  setup do
    @configuration = configurations(:one)
  end

  test "visiting the index" do
    visit configurations_url
    assert_selector "h1", text: "Configurations"
  end

  test "creating a Configuration" do
    visit configurations_url
    click_on "New Configuration"

    fill_in "Biography", with: @configuration.biography
    fill_in "Name", with: @configuration.name
    fill_in "Phone", with: @configuration.phone
    fill_in "Privateaccount", with: @configuration.privateAccount
    fill_in "User", with: @configuration.user_id
    fill_in "Username", with: @configuration.username
    fill_in "Website", with: @configuration.website
    click_on "Create Configuration"

    assert_text "Configuration was successfully created"
    click_on "Back"
  end

  test "updating a Configuration" do
    visit configurations_url
    click_on "Edit", match: :first

    fill_in "Biography", with: @configuration.biography
    fill_in "Name", with: @configuration.name
    fill_in "Phone", with: @configuration.phone
    fill_in "Privateaccount", with: @configuration.privateAccount
    fill_in "User", with: @configuration.user_id
    fill_in "Username", with: @configuration.username
    fill_in "Website", with: @configuration.website
    click_on "Update Configuration"

    assert_text "Configuration was successfully updated"
    click_on "Back"
  end

  test "destroying a Configuration" do
    visit configurations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Configuration was successfully destroyed"
  end
end
