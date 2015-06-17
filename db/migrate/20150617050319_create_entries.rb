class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :journal_id
      t.string :name
      t.text :description
      t.timestamps null: false
    end
  end
end
