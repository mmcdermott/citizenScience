class CreateClassificationData < ActiveRecord::Migration
  def change
    create_table :classification_data do |t|
      t.belongs_to :question, :user, null: false
      t.integer :value
      t.boolean :anonymized

      t.timestamps
    end

    add_index :classification_data, :question_id, :user_id
  end
end
