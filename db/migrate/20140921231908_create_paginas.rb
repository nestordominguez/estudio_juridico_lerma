class CreatePaginas < ActiveRecord::Migration
  def change
    create_table :paginas do |t|
      t.string :seccion
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
