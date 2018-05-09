require 'test_helper'

class DashBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dash_board = dash_boards(:one)
  end

  test "should get index" do
    get dash_boards_url
    assert_response :success
  end

  test "should get new" do
    get new_dash_board_url
    assert_response :success
  end

  test "should create dash_board" do
    assert_difference('DashBoard.count') do
      post dash_boards_url, params: { dash_board: {  } }
    end

    assert_redirected_to dash_board_url(DashBoard.last)
  end

  test "should show dash_board" do
    get dash_board_url(@dash_board)
    assert_response :success
  end

  test "should get edit" do
    get edit_dash_board_url(@dash_board)
    assert_response :success
  end

  test "should update dash_board" do
    patch dash_board_url(@dash_board), params: { dash_board: {  } }
    assert_redirected_to dash_board_url(@dash_board)
  end

  test "should destroy dash_board" do
    assert_difference('DashBoard.count', -1) do
      delete dash_board_url(@dash_board)
    end

    assert_redirected_to dash_boards_url
  end
end
