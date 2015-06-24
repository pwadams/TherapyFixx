class RemoveColumnFromAnxietyScales < ActiveRecord::Migration
  def change
    remove_column :anxiety_scales, :patient_id
  end
end
