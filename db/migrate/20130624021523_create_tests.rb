class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.belongs_to :creator, null: false
      t.integer :frequency, default: 1
      t.text :description
      t.boolean :published, default: true

      t.timestamps
    end

    add_index :tests, :creator_id, name: 'creator_id_ix'
  end
end
