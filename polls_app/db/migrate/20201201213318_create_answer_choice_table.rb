class CreateAnswerChoiceTable < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choice_tables do |t|
      t.integer :question_id, null: false
      t.string :text, null: false
    end

    add_index :answer_choice_tables, :question_id
  end
end
