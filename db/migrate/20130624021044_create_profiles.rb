class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, null: false
      t.string :nickname
      t.text :bio

      t.timestamps
    end
    
    add_index :profiles, :user_id, name: 'user_id_ix'
  end
end
