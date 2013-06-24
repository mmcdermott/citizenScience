class CreateStringData < ActiveRecord::Migration
  def change
    create_table :string_data do |t|
      t.string :value
      t.belongs_to :question, :user, null: false
      t.boolean :anonymized

      t.timestamps
    end

    add_index :string_data, :question_id, name: 'question_id_ix'
    add_index :string_data, :user_id, name: 'user_id_ix'
  end
end
