class CreateTherapist < ActiveRecord::Migration
  def change
    create_table :therapists do |t|
      t.string :email
      t.string :password_digest
      t.string :password_confirmation
      t.boolean :admin
      t.string :therapist_code

      t.timestamps null: false
    end
  end
end
