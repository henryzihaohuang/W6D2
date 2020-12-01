class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tables do |t|
      t.string :username, null: false
    end

    add_index :user_tables, :username, unique: true
  end
end
