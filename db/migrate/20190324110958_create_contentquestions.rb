class CreateContentquestions < ActiveRecord::Migration[5.2]
  def change
    create_table :contentquestions do |t|
      t.string :question_content_year
      t.string :question_content_nation
      t.string :question_content_income
      t.string :question_content_type
      t.string :question_content_study
      t.string :question_content_modelling
      t.string :question_content_perspective_a
      t.string :question_content_perspective_r
      t.string :question_content_sensitivity
      t.string :question_content_data
      t.string :question_content_outcome
      t.string :question_content_cost
      t.string :question_content_intervention
      t.string :question_content_data
      t.string :question_content_sample
      t.string :question_content_description
      t.references :user, foreign_key: true
      t.references :paper, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
