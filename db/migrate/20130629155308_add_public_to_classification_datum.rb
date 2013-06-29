class AddPublicToClassificationDatum < ActiveRecord::Migration
  def change
    add_column :classification_data, :public, :boolean, default: false
  end
end
