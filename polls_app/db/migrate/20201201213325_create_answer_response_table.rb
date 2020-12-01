class CreateAnswerResponseTable < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_response_tables do |t|
      t.integer :answer_choice_id, null:false
      t.integer :question_id, null:false
      t.integer :user_id, null:false
    end

    add_index :answer_response_tables, :answer_choice_id
    add_index :answer_response_tables, :question_id
  end
end
