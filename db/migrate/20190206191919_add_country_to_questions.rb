class AddCountryToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :question_content_country, :string
  end
end
