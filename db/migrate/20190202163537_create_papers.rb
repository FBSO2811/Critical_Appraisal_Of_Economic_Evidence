class CreatePapers < ActiveRecord::Migration[5.2]
  def change
    create_table :papers do |t|
      t.string :title
      t.string :body
      t.string :question_1
      t.string :question_2
      t.string :question_3
      t.string :question_4
      t.string :question_5
      t.string :question_6
      t.string :question_7
      t.string :question_8
      t.string :question_9
      t.string :question_10
      t.string :question_11
      t.string :question_12
      t.string :question_13
      t.string :question_14
      t.string :question_15
      t.string :question_16
      t.string :question_17
      t.string :question_18
      t.string :question_19
      t.string :question_20
      t.string :question_21
      t.string :question_22
      t.string :question_23
      t.string :question_24
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
