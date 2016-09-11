class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :deadline

      t.timestamps
    end
  end
end
