class CreateAnalogyVotes < ActiveRecord::Migration
  def change
    create_table :analogy_votes do |t|
      t.integer :analogy_id
      t.integer :user_id
      t.boolean :vote_type

      t.timestamps
    end
  end
end
