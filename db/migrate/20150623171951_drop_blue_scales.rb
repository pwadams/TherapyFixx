class DropBlueScales < ActiveRecord::Migration
  def change
    drop_table  :blue_scales
  end
end
