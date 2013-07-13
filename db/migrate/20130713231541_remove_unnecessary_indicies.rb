class RemoveUnnecessaryIndicies < ActiveRecord::Migration
  def change
    remove_index :questions, name: :index_questions_on_test_id
    remove_index :registrations, name: :index_registrations_on_test_id
  end
end
