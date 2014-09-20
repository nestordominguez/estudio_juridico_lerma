class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.text :comentarios

      t.timestamps
    end
  end
end
