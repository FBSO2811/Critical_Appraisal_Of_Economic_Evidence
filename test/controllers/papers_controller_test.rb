require 'test_helper'

class PapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paper = papers(:one)
  end

  test "should get index" do
    get papers_url
    assert_response :success
  end

  test "should get new" do
    get new_paper_url
    assert_response :success
  end

  test "should create paper" do
    assert_difference('Paper.count') do
      post papers_url, params: { paper: { body: @paper.body, project_id: @paper.project_id, question_1: @paper.question_1, question_10: @paper.question_10, question_11: @paper.question_11, question_12: @paper.question_12, question_13: @paper.question_13, question_14: @paper.question_14, question_15: @paper.question_15, question_16: @paper.question_16, question_17: @paper.question_17, question_18: @paper.question_18, question_19: @paper.question_19, question_2: @paper.question_2, question_20: @paper.question_20, question_21: @paper.question_21, question_22: @paper.question_22, question_23: @paper.question_23, question_24: @paper.question_24, question_3: @paper.question_3, question_4: @paper.question_4, question_5: @paper.question_5, question_6: @paper.question_6, question_7: @paper.question_7, question_8: @paper.question_8, question_9: @paper.question_9, title: @paper.title } }
    end

    assert_redirected_to paper_url(Paper.last)
  end

  test "should show paper" do
    get paper_url(@paper)
    assert_response :success
  end

  test "should get edit" do
    get edit_paper_url(@paper)
    assert_response :success
  end

  test "should update paper" do
    patch paper_url(@paper), params: { paper: { body: @paper.body, project_id: @paper.project_id, question_1: @paper.question_1, question_10: @paper.question_10, question_11: @paper.question_11, question_12: @paper.question_12, question_13: @paper.question_13, question_14: @paper.question_14, question_15: @paper.question_15, question_16: @paper.question_16, question_17: @paper.question_17, question_18: @paper.question_18, question_19: @paper.question_19, question_2: @paper.question_2, question_20: @paper.question_20, question_21: @paper.question_21, question_22: @paper.question_22, question_23: @paper.question_23, question_24: @paper.question_24, question_3: @paper.question_3, question_4: @paper.question_4, question_5: @paper.question_5, question_6: @paper.question_6, question_7: @paper.question_7, question_8: @paper.question_8, question_9: @paper.question_9, title: @paper.title } }
    assert_redirected_to paper_url(@paper)
  end

  test "should destroy paper" do
    assert_difference('Paper.count', -1) do
      delete paper_url(@paper)
    end

    assert_redirected_to papers_url
  end
end
