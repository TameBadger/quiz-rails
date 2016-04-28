require 'test_helper'

class PairAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pair_answer = pair_answers(:one)
  end

  test "should get index" do
    get pair_answers_url
    assert_response :success
  end

  test "should create pair_answer" do
    assert_difference('PairAnswer.count') do
      post pair_answers_url, params: { pair_answer: { answer_id: @pair_answer.answer_id, pair_id: @pair_answer.pair_id } }
    end

    assert_response 201
  end

  test "should show pair_answer" do
    get pair_answer_url(@pair_answer)
    assert_response :success
  end

  test "should update pair_answer" do
    patch pair_answer_url(@pair_answer), params: { pair_answer: { answer_id: @pair_answer.answer_id, pair_id: @pair_answer.pair_id } }
    assert_response 200
  end

  test "should destroy pair_answer" do
    assert_difference('PairAnswer.count', -1) do
      delete pair_answer_url(@pair_answer)
    end

    assert_response 204
  end
end
