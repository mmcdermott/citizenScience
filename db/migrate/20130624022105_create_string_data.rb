class CreateStringData < ActiveRecord::Migration
  def change
    create_table :string_data do |t|
      t.string :value
      t.integer :question_id
      t.integer :user_id
      t.boolean :anonymized

      t.timestamps
    end
  end
end
