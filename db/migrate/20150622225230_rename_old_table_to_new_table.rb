class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
    rename_table :patients, :users
  end
end
