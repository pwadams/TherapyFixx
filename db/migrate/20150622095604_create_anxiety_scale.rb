class CreateAnxietyScale < ActiveRecord::Migration
  def change
    create_table :anxiety_scales do |t|
      t.integer :patient_id
      t.date  :date
      t.integer  :worrying
      t.integer  :feeling_afraid
      t.integer :feeling_tense
      t.integer :difficulty_sleeping
      
    end
  end
end
