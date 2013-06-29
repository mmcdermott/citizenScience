class AddPublicToNumericDatum < ActiveRecord::Migration
  def change
    add_column :numeric_data, :public, :boolean, default: false
  end
end
