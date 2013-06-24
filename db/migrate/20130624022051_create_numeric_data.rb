class CreateNumericData < ActiveRecord::Migration
  def change
    create_table :numeric_data do |t|
      t.belongs_to :question, :user, null: false
      t.float :value
      t.boolean :anonymized

      t.timestamps
    end

    add_index :numeric_data, :question_id, name: 'question_id_ix'
    add_index :numeric_data, :user_id, name: 'user_id_ix'
  end
end
