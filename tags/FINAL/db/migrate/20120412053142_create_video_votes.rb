class CreateVideoVotes < ActiveRecord::Migration
  def change
    create_table :video_votes do |t|
      t.integer :video_id
      t.integer :user_id
      t.boolean :vote_type

      t.timestamps
    end
  end
end
