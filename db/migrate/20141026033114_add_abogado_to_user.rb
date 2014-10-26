class AddAbogadoToUser < ActiveRecord::Migration
  def change
    add_column :users, :abogado, :boolean, :default => false
  end
end
