require 'test_helper'

class ContentquestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contentquestion = contentquestions(:one)
  end

  test "should get index" do
    get contentquestions_url
    assert_response :success
  end

  test "should get new" do
    get new_contentquestion_url
    assert_response :success
  end

  test "should create contentquestion" do
    assert_difference('Contentquestion.count') do
      post contentquestions_url, params: { contentquestion: { paper_id: @contentquestion.paper_id, project_id: @contentquestion.project_id, question_content_cost: @contentquestion.question_content_cost, question_content_data: @contentquestion.question_content_data, question_content_description: @contentquestion.question_content_description, question_content_income: @contentquestion.question_content_income, question_content_intervention: @contentquestion.question_content_intervention, question_content_modelling: @contentquestion.question_content_modelling, question_content_nation: @contentquestion.question_content_nation, question_content_outcome: @contentquestion.question_content_outcome, question_content_perspective_a: @contentquestion.question_content_perspective_a, question_content_perspective_r: @contentquestion.question_content_perspective_r, question_content_sample: @contentquestion.question_content_sample, question_content_sensitivity: @contentquestion.question_content_sensitivity, question_content_study: @contentquestion.question_content_study, question_content_type: @contentquestion.question_content_type, question_content_year: @contentquestion.question_content_year, user_id: @contentquestion.user_id } }
    end

    assert_redirected_to contentquestion_url(Contentquestion.last)
  end

  test "should show contentquestion" do
    get contentquestion_url(@contentquestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_contentquestion_url(@contentquestion)
    assert_response :success
  end

  test "should update contentquestion" do
    patch contentquestion_url(@contentquestion), params: { contentquestion: { paper_id: @contentquestion.paper_id, project_id: @contentquestion.project_id, question_content_cost: @contentquestion.question_content_cost, question_content_data: @contentquestion.question_content_data, question_content_description: @contentquestion.question_content_description, question_content_income: @contentquestion.question_content_income, question_content_intervention: @contentquestion.question_content_intervention, question_content_modelling: @contentquestion.question_content_modelling, question_content_nation: @contentquestion.question_content_nation, question_content_outcome: @contentquestion.question_content_outcome, question_content_perspective_a: @contentquestion.question_content_perspective_a, question_content_perspective_r: @contentquestion.question_content_perspective_r, question_content_sample: @contentquestion.question_content_sample, question_content_sensitivity: @contentquestion.question_content_sensitivity, question_content_study: @contentquestion.question_content_study, question_content_type: @contentquestion.question_content_type, question_content_year: @contentquestion.question_content_year, user_id: @contentquestion.user_id } }
    assert_redirected_to contentquestion_url(@contentquestion)
  end

  test "should destroy contentquestion" do
    assert_difference('Contentquestion.count', -1) do
      delete contentquestion_url(@contentquestion)
    end

    assert_redirected_to contentquestions_url
  end
end
