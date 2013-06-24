class CreateNumericData < ActiveRecord::Migration
  def change
    create_table :numeric_data do |t|
      t.belongs_to :question, :user, null: false
      t.float :value
      t.boolean :anonymized

      t.timestamps
    end

    add_index :numeric_data, :question_id
    add_index :numeric_data, :user_id
  end
end
