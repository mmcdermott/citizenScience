class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.belongs_to :test, :user, null: false
      t.integer :frequency, default: 1
      t.date :expiration_date

      t.timestamps
    end

    add_index :registrations, :test_id
    add_index :registrations, :user_id
  end
end
