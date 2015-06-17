class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.string  :password_digest
      t.string  :password_confirmation
      t.integer :age
      t.string  :therapist_code
      t.integer :therapist_id

      t.timestamps null: false

    end
  end
end
