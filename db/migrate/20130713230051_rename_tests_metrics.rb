class RenameTestsMetrics < ActiveRecord::Migration
  def change
    rename_table :tests, :metrics
  end
end
