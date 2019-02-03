require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "creating a Question" do
    visit questions_url
    click_on "New Question"

    fill_in "Paper", with: @question.paper_id
    fill_in "Project", with: @question.project_id
    fill_in "Question 1", with: @question.question_1
    fill_in "Question 10", with: @question.question_10
    fill_in "Question 11", with: @question.question_11
    fill_in "Question 12", with: @question.question_12
    fill_in "Question 13", with: @question.question_13
    fill_in "Question 14", with: @question.question_14
    fill_in "Question 15", with: @question.question_15
    fill_in "Question 16", with: @question.question_16
    fill_in "Question 17", with: @question.question_17
    fill_in "Question 18", with: @question.question_18
    fill_in "Question 19", with: @question.question_19
    fill_in "Question 2", with: @question.question_2
    fill_in "Question 20", with: @question.question_20
    fill_in "Question 21", with: @question.question_21
    fill_in "Question 22", with: @question.question_22
    fill_in "Question 23", with: @question.question_23
    fill_in "Question 24", with: @question.question_24
    fill_in "Question 25", with: @question.question_25
    fill_in "Question 26", with: @question.question_26
    fill_in "Question 27", with: @question.question_27
    fill_in "Question 28", with: @question.question_28
    fill_in "Question 3", with: @question.question_3
    fill_in "Question 4", with: @question.question_4
    fill_in "Question 5", with: @question.question_5
    fill_in "Question 6", with: @question.question_6
    fill_in "Question 7", with: @question.question_7
    fill_in "Question 8", with: @question.question_8
    fill_in "Question 9", with: @question.question_9
    fill_in "Type", with: @question.type
    fill_in "User", with: @question.user_id
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "updating a Question" do
    visit questions_url
    click_on "Edit", match: :first

    fill_in "Paper", with: @question.paper_id
    fill_in "Project", with: @question.project_id
    fill_in "Question 1", with: @question.question_1
    fill_in "Question 10", with: @question.question_10
    fill_in "Question 11", with: @question.question_11
    fill_in "Question 12", with: @question.question_12
    fill_in "Question 13", with: @question.question_13
    fill_in "Question 14", with: @question.question_14
    fill_in "Question 15", with: @question.question_15
    fill_in "Question 16", with: @question.question_16
    fill_in "Question 17", with: @question.question_17
    fill_in "Question 18", with: @question.question_18
    fill_in "Question 19", with: @question.question_19
    fill_in "Question 2", with: @question.question_2
    fill_in "Question 20", with: @question.question_20
    fill_in "Question 21", with: @question.question_21
    fill_in "Question 22", with: @question.question_22
    fill_in "Question 23", with: @question.question_23
    fill_in "Question 24", with: @question.question_24
    fill_in "Question 25", with: @question.question_25
    fill_in "Question 26", with: @question.question_26
    fill_in "Question 27", with: @question.question_27
    fill_in "Question 28", with: @question.question_28
    fill_in "Question 3", with: @question.question_3
    fill_in "Question 4", with: @question.question_4
    fill_in "Question 5", with: @question.question_5
    fill_in "Question 6", with: @question.question_6
    fill_in "Question 7", with: @question.question_7
    fill_in "Question 8", with: @question.question_8
    fill_in "Question 9", with: @question.question_9
    fill_in "Type", with: @question.type
    fill_in "User", with: @question.user_id
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "destroying a Question" do
    visit questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question was successfully destroyed"
  end
end
