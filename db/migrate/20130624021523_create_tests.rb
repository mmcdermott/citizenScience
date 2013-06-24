class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :frequency
      t.text :description
      t.boolean :published

      t.timestamps
    end
  end
end
