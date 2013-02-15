class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :answer_id
      t.boolean :vote_type
      t.timestamps
    end

    add_index :votes, [:user_id, :answer_id], unique: true
  end
end
