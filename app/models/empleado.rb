class Empleado < ActiveRecord::Base
  
  
  validates :nombre, presence: true
  validates :correo_electronico, presence: true,  uniqueness: true
  validates :rfc, presence: true
  validates :empresa_id, presence: true
  validates :password, presence: true
  
 # has_secure_password
 # validates :password, length: { minimum: 6 }
  
  belongs_to :empresa
end
