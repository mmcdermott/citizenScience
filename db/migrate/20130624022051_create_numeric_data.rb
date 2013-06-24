class CreateNumericData < ActiveRecord::Migration
  def change
    create_table :numeric_data do |t|
      t.float :value
      t.integer :question_id
      t.integer :user_id
      t.boolean :anonymized

      t.timestamps
    end
  end
end
