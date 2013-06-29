class AddPublicToStringDatum < ActiveRecord::Migration
  def change
    add_column :string_data, :public, :boolean, default: false
  end
end
