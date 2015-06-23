class DropTherapistsTable < ActiveRecord::Migration
  def change
    drop_table :therapists
  end
end
