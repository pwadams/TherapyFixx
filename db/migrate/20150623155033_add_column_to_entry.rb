class AddColumnToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :sentiment_score, :string
  end
end
