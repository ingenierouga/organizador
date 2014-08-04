class Empresa < ActiveRecord::Base
  
  attr_accessor :nombre, :calle, :colonia, :numero_int, :numero_ext, :codigo_postal, :ciudad
  
  has_many :empleados
end
