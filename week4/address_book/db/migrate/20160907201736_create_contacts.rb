class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :phonenumber
      t.string :emailaddress

      t.timestamps
    end
  end
end
