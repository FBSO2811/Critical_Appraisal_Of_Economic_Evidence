class AddSubmittedToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :submitted, :boolean, default: false
  end
end
