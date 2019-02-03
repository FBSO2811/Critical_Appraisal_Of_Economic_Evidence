class AddCDEFToPapers < ActiveRecord::Migration[5.2]
  def change
    add_column :papers, :question_25, :string
    add_column :papers, :question_26, :string
    add_column :papers, :question_27, :string
    add_column :papers, :question_28, :string
  end
end
