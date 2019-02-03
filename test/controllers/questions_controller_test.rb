require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get questions_url
    assert_response :success
  end

  test "should get new" do
    get new_question_url
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post questions_url, params: { question: { paper_id: @question.paper_id, project_id: @question.project_id, question_1: @question.question_1, question_10: @question.question_10, question_11: @question.question_11, question_12: @question.question_12, question_13: @question.question_13, question_14: @question.question_14, question_15: @question.question_15, question_16: @question.question_16, question_17: @question.question_17, question_18: @question.question_18, question_19: @question.question_19, question_2: @question.question_2, question_20: @question.question_20, question_21: @question.question_21, question_22: @question.question_22, question_23: @question.question_23, question_24: @question.question_24, question_25: @question.question_25, question_26: @question.question_26, question_27: @question.question_27, question_28: @question.question_28, question_3: @question.question_3, question_4: @question.question_4, question_5: @question.question_5, question_6: @question.question_6, question_7: @question.question_7, question_8: @question.question_8, question_9: @question.question_9, type: @question.type, user_id: @question.user_id } }
    end

    assert_redirected_to question_url(Question.last)
  end

  test "should show question" do
    get question_url(@question)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_url(@question)
    assert_response :success
  end

  test "should update question" do
    patch question_url(@question), params: { question: { paper_id: @question.paper_id, project_id: @question.project_id, question_1: @question.question_1, question_10: @question.question_10, question_11: @question.question_11, question_12: @question.question_12, question_13: @question.question_13, question_14: @question.question_14, question_15: @question.question_15, question_16: @question.question_16, question_17: @question.question_17, question_18: @question.question_18, question_19: @question.question_19, question_2: @question.question_2, question_20: @question.question_20, question_21: @question.question_21, question_22: @question.question_22, question_23: @question.question_23, question_24: @question.question_24, question_25: @question.question_25, question_26: @question.question_26, question_27: @question.question_27, question_28: @question.question_28, question_3: @question.question_3, question_4: @question.question_4, question_5: @question.question_5, question_6: @question.question_6, question_7: @question.question_7, question_8: @question.question_8, question_9: @question.question_9, type: @question.type, user_id: @question.user_id } }
    assert_redirected_to question_url(@question)
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete question_url(@question)
    end

    assert_redirected_to questions_url
  end
end
