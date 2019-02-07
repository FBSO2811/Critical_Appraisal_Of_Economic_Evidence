class RemoveCondensedtypeFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :question_content_condensed_type, :string
  end
end
