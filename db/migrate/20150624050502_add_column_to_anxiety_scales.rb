class AddColumnToAnxietyScales < ActiveRecord::Migration
  def change
    add_column  :anxiety_scales, :user_id, :integer
  end
end
