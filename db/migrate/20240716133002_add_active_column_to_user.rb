class AddActiveColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :active, :boolean, default: true, null: true
  end
end
