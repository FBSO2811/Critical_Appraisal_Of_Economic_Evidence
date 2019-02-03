require "application_system_test_case"

class PapersTest < ApplicationSystemTestCase
  setup do
    @paper = papers(:one)
  end

  test "visiting the index" do
    visit papers_url
    assert_selector "h1", text: "Papers"
  end

  test "creating a Paper" do
    visit papers_url
    click_on "New Paper"

    fill_in "Body", with: @paper.body
    fill_in "Project", with: @paper.project_id
    fill_in "Question 1", with: @paper.question_1
    fill_in "Question 10", with: @paper.question_10
    fill_in "Question 11", with: @paper.question_11
    fill_in "Question 12", with: @paper.question_12
    fill_in "Question 13", with: @paper.question_13
    fill_in "Question 14", with: @paper.question_14
    fill_in "Question 15", with: @paper.question_15
    fill_in "Question 16", with: @paper.question_16
    fill_in "Question 17", with: @paper.question_17
    fill_in "Question 18", with: @paper.question_18
    fill_in "Question 19", with: @paper.question_19
    fill_in "Question 2", with: @paper.question_2
    fill_in "Question 20", with: @paper.question_20
    fill_in "Question 21", with: @paper.question_21
    fill_in "Question 22", with: @paper.question_22
    fill_in "Question 23", with: @paper.question_23
    fill_in "Question 24", with: @paper.question_24
    fill_in "Question 3", with: @paper.question_3
    fill_in "Question 4", with: @paper.question_4
    fill_in "Question 5", with: @paper.question_5
    fill_in "Question 6", with: @paper.question_6
    fill_in "Question 7", with: @paper.question_7
    fill_in "Question 8", with: @paper.question_8
    fill_in "Question 9", with: @paper.question_9
    fill_in "Title", with: @paper.title
    click_on "Create Paper"

    assert_text "Paper was successfully created"
    click_on "Back"
  end

  test "updating a Paper" do
    visit papers_url
    click_on "Edit", match: :first

    fill_in "Body", with: @paper.body
    fill_in "Project", with: @paper.project_id
    fill_in "Question 1", with: @paper.question_1
    fill_in "Question 10", with: @paper.question_10
    fill_in "Question 11", with: @paper.question_11
    fill_in "Question 12", with: @paper.question_12
    fill_in "Question 13", with: @paper.question_13
    fill_in "Question 14", with: @paper.question_14
    fill_in "Question 15", with: @paper.question_15
    fill_in "Question 16", with: @paper.question_16
    fill_in "Question 17", with: @paper.question_17
    fill_in "Question 18", with: @paper.question_18
    fill_in "Question 19", with: @paper.question_19
    fill_in "Question 2", with: @paper.question_2
    fill_in "Question 20", with: @paper.question_20
    fill_in "Question 21", with: @paper.question_21
    fill_in "Question 22", with: @paper.question_22
    fill_in "Question 23", with: @paper.question_23
    fill_in "Question 24", with: @paper.question_24
    fill_in "Question 3", with: @paper.question_3
    fill_in "Question 4", with: @paper.question_4
    fill_in "Question 5", with: @paper.question_5
    fill_in "Question 6", with: @paper.question_6
    fill_in "Question 7", with: @paper.question_7
    fill_in "Question 8", with: @paper.question_8
    fill_in "Question 9", with: @paper.question_9
    fill_in "Title", with: @paper.title
    click_on "Update Paper"

    assert_text "Paper was successfully updated"
    click_on "Back"
  end

  test "destroying a Paper" do
    visit papers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paper was successfully destroyed"
  end
end
