class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :concert, foreign_key: true
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
