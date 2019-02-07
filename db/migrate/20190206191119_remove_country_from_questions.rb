class RemoveCountryFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :question_content_country, :country
  end
end
