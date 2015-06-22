class CreateBlueScale < ActiveRecord::Migration
  def change
    create_table :blue_scales do |t|
      t.integer :sadness
      t.integer :emptiness
      t.integer :lack_of_enjoyment
      t.integer :fatigue
      t.integer :anger
      t.integer :overall

    end
  end
end
