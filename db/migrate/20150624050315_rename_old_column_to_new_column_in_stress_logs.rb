class RenameOldColumnToNewColumnInStressLogs < ActiveRecord::Migration
  def change
    rename_column :stress_logs, :patient_id, :user_id
  end
end
