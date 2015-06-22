class CreateStressLog < ActiveRecord::Migration
  def change
    create_table :stress_logs do |t|
      t.integer :patient_id
      t.date :date
      t.text  :situation
      t.boolean :afraid
      t.boolean :angry
      t.boolean :annoyed
      t.boolean :ashamed
      t.boolean :anxious
      t.boolean :bored
      t.boolean :confused
      t.boolean :depressed
      t.boolean :disappointed
      t.boolean :down
      t.boolean :embarrassed
      t.boolean :frustrated
      t.boolean :guilty
      t.boolean :irritated
      t.boolean :lonely
      t.boolean :sad
      t.boolean :jealous
      t.boolean :tense
      t.string :custom
      t.text  :thought1
      t.text  :thought2
      t.text  :thought3
      t.text  :thought4
      t.text  :thought5
    end
  end
end
