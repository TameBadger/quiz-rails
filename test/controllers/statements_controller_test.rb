require 'test_helper'

class StatementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @statement = statements(:one)
  end

  test "should get index" do
    get statements_url
    assert_response :success
  end

  test "should create statement" do
    assert_difference('Statement.count') do
      post statements_url, params: { statement: { option: @statement.option, pair_id: @statement.pair_id, title: @statement.title } }
    end

    assert_response 201
  end

  test "should show statement" do
    get statement_url(@statement)
    assert_response :success
  end

  test "should update statement" do
    patch statement_url(@statement), params: { statement: { option: @statement.option, pair_id: @statement.pair_id, title: @statement.title } }
    assert_response 200
  end

  test "should destroy statement" do
    assert_difference('Statement.count', -1) do
      delete statement_url(@statement)
    end

    assert_response 204
  end
end
