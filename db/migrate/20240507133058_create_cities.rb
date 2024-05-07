class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
