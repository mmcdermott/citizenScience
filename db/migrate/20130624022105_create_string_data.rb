class CreateStringData < ActiveRecord::Migration
  def change
    create_table :string_data do |t|
      t.string :value
      t.belongs_to :question, :user, null: false
      t.boolean :anonymized

      t.timestamps
    end

    add_index :string_data, :question_id, :user_id
  end
end
