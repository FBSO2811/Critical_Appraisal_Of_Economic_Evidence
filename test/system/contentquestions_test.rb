require "application_system_test_case"

class ContentquestionsTest < ApplicationSystemTestCase
  setup do
    @contentquestion = contentquestions(:one)
  end

  test "visiting the index" do
    visit contentquestions_url
    assert_selector "h1", text: "Contentquestions"
  end

  test "creating a Contentquestion" do
    visit contentquestions_url
    click_on "New Contentquestion"

    fill_in "Paper", with: @contentquestion.paper_id
    fill_in "Project", with: @contentquestion.project_id
    fill_in "Question content cost", with: @contentquestion.question_content_cost
    fill_in "Question content data", with: @contentquestion.question_content_data
    fill_in "Question content description", with: @contentquestion.question_content_description
    fill_in "Question content income", with: @contentquestion.question_content_income
    fill_in "Question content intervention", with: @contentquestion.question_content_intervention
    fill_in "Question content modelling", with: @contentquestion.question_content_modelling
    fill_in "Question content nation", with: @contentquestion.question_content_nation
    fill_in "Question content outcome", with: @contentquestion.question_content_outcome
    fill_in "Question content perspective a", with: @contentquestion.question_content_perspective_a
    fill_in "Question content perspective r", with: @contentquestion.question_content_perspective_r
    fill_in "Question content sample", with: @contentquestion.question_content_sample
    fill_in "Question content sensitivity", with: @contentquestion.question_content_sensitivity
    fill_in "Question content study", with: @contentquestion.question_content_study
    fill_in "Question content type", with: @contentquestion.question_content_type
    fill_in "Question content year", with: @contentquestion.question_content_year
    fill_in "User", with: @contentquestion.user_id
    click_on "Create Contentquestion"

    assert_text "Contentquestion was successfully created"
    click_on "Back"
  end

  test "updating a Contentquestion" do
    visit contentquestions_url
    click_on "Edit", match: :first

    fill_in "Paper", with: @contentquestion.paper_id
    fill_in "Project", with: @contentquestion.project_id
    fill_in "Question content cost", with: @contentquestion.question_content_cost
    fill_in "Question content data", with: @contentquestion.question_content_data
    fill_in "Question content description", with: @contentquestion.question_content_description
    fill_in "Question content income", with: @contentquestion.question_content_income
    fill_in "Question content intervention", with: @contentquestion.question_content_intervention
    fill_in "Question content modelling", with: @contentquestion.question_content_modelling
    fill_in "Question content nation", with: @contentquestion.question_content_nation
    fill_in "Question content outcome", with: @contentquestion.question_content_outcome
    fill_in "Question content perspective a", with: @contentquestion.question_content_perspective_a
    fill_in "Question content perspective r", with: @contentquestion.question_content_perspective_r
    fill_in "Question content sample", with: @contentquestion.question_content_sample
    fill_in "Question content sensitivity", with: @contentquestion.question_content_sensitivity
    fill_in "Question content study", with: @contentquestion.question_content_study
    fill_in "Question content type", with: @contentquestion.question_content_type
    fill_in "Question content year", with: @contentquestion.question_content_year
    fill_in "User", with: @contentquestion.user_id
    click_on "Update Contentquestion"

    assert_text "Contentquestion was successfully updated"
    click_on "Back"
  end

  test "destroying a Contentquestion" do
    visit contentquestions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contentquestion was successfully destroyed"
  end
end
