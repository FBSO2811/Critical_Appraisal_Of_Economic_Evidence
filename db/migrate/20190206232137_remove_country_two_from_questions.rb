class RemoveCountryTwoFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :question_content_country, :string
  end
end
