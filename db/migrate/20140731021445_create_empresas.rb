class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :calle
      t.string :colonia
      t.integer :numero_ext
      t.integer :numero_int
      t.integer :codigo_postal
      t.string :ciudad
      t.string :pais

      t.timestamps
    end
  end
end
