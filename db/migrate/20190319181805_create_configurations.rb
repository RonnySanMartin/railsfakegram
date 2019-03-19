class CreateConfigurations < ActiveRecord::Migration[5.2]
  def change
    create_table :configurations do |t|
      t.string :name
      t.string :username
      t.string :website
      t.text :biography
      t.string :phone
      t.boolean :privateAccount, :default => false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
