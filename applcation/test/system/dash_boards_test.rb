require "application_system_test_case"

class DashBoardsTest < ApplicationSystemTestCase
  setup do
    @dash_board = dash_boards(:one)
  end

  test "visiting the index" do
    visit dash_boards_url
    assert_selector "h1", text: "Dash Boards"
  end

  test "creating a Dash board" do
    visit dash_boards_url
    click_on "New Dash Board"

    click_on "Create Dash board"

    assert_text "Dash board was successfully created"
    click_on "Back"
  end

  test "updating a Dash board" do
    visit dash_boards_url
    click_on "Edit", match: :first

    click_on "Update Dash board"

    assert_text "Dash board was successfully updated"
    click_on "Back"
  end

  test "destroying a Dash board" do
    visit dash_boards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dash board was successfully destroyed"
  end
end
