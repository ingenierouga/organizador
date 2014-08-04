class Empleado < ActiveRecord::Base
  attr_accessor :nombre, :correo_electronico, :rfc, :empresa_id, :password
  
  belongs_to :empresa
end
