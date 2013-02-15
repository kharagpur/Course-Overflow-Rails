class CreateDefinitionVotes < ActiveRecord::Migration
  def change
    create_table :definition_votes do |t|
      t.integer :definition_id
      t.integer :user_id
      t.boolean :vote_type

      t.timestamps
    end
  end
end
