class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :correo_electronico
      t.string :rfc
      t.string :nombre_empesa
      t.string :password
      t.integer :empresa_id
      t.string :password_digest
      t.string :remember_token

      t.timestamps
    end
  end
end
