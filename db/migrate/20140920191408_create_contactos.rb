class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
