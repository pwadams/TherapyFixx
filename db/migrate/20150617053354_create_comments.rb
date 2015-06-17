class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :therapist_id
      t.integer :entry_id
      t.text  :description
      t.timestamps null: false
    end
  end
end
