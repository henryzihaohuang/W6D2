class CreatePollTable < ActiveRecord::Migration[5.2]
  def change
    create_table :poll_tables do |t|
      t.integer :author_id, null: false
      t.string :title, null: false
    end

    add_index :poll_tables, :author_id
  end
end
