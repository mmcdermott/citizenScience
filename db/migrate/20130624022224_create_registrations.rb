class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :test_id
      t.integer :user_id
      t.integer :frequency
      t.date :expiration_date

      t.timestamps
    end
  end
end
