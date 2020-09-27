class ChangeTasksMigration < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :detail, :details
    change_column_default :tasks, :completed, from: nil, to: false
  end
end
