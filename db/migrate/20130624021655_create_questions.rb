class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.integer :answer_type
      t.integer :test_id
      t.string :input_label

      t.timestamps
    end
  end
end
