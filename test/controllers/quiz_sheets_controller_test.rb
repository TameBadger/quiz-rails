require 'test_helper'

class QuizSheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz_sheet = quiz_sheets(:one)
  end

  test "should get index" do
    get quiz_sheets_url
    assert_response :success
  end

  test "should create quiz_sheet" do
    assert_difference('QuizSheet.count') do
      post quiz_sheets_url, params: { quiz_sheet: { title: @quiz_sheet.title } }
    end

    assert_response 201
  end

  test "should show quiz_sheet" do
    get quiz_sheet_url(@quiz_sheet)
    assert_response :success
  end

  test "should update quiz_sheet" do
    patch quiz_sheet_url(@quiz_sheet), params: { quiz_sheet: { title: @quiz_sheet.title } }
    assert_response 200
  end

  test "should destroy quiz_sheet" do
    assert_difference('QuizSheet.count', -1) do
      delete quiz_sheet_url(@quiz_sheet)
    end

    assert_response 204
  end
end
