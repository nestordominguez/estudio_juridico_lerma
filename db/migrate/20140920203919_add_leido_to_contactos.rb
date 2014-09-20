class AddLeidoToContactos < ActiveRecord::Migration
  def change
    add_column :contactos, :leido, :string, :default => "No"
  end
end
