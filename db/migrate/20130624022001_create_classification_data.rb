class CreateClassificationData < ActiveRecord::Migration
  def change
    create_table :classification_data do |t|
      t.integer :value
      t.integer :question_id
      t.integer :user_id
      t.boolean :anonymized

      t.timestamps
    end
  end
end
