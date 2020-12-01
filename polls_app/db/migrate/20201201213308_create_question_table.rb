class CreateQuestionTable < ActiveRecord::Migration[5.2]
  def change
    create_table :question_tables do |t|
      t.integer :poll_id, null: false
      t.string :text, null: false
    end

    add_index :question_tables, :poll_id
  end
end
