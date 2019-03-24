class Contentquestion < ApplicationRecord
  belongs_to :user
  belongs_to :paper
  belongs_to :project


  validates :user_id, :paper_id, :project_id, :question_content_year, :question_content_income,
        :question_content_study, :question_content_modelling, :question_content_perspective_a, :question_content_perspective_r, :question_content_sensitivity, :question_content_type, :question_content_outcome, :question_content_intervention,
        :question_content_data, :question_content_sample, :question_content_description, :question_content_nation, :question_content_cost, presence: true

end
