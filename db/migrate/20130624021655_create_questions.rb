class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :test, null: false
      t.text :question
      t.integer :answer_type, default: 1
      t.string :input_label

      t.timestamps
    end

    add_index :questions, :test_id
  end
end
