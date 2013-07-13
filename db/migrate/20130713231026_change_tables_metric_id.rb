class ChangeTablesMetricId < ActiveRecord::Migration
  def change
    rename_column :questions, :test_id, :metric_id
    rename_column :registrations, :test_id, :metric_id
    add_index :questions, :metric_id
    add_index :registrations, :metric_id
  end
end
