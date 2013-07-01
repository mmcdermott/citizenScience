class AddPublicToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :public, :boolean, default: false
  end
end
