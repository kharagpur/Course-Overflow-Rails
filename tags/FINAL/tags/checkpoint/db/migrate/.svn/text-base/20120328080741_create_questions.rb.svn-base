class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :course_id
      t.integer :user_id
      t.text :title
      t.text :description
      t.integer :views

      t.timestamps
    end
  end
end
