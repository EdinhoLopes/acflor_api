class CreateAbilityResources < ActiveRecord::Migration[7.0]
  def change
    create_table :ability_resources do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
