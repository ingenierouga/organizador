class Empresa < ActiveRecord::Base
  
  validates :nombre, presence: true,  uniqueness: { case_sensitive: false }
  
  has_many :empleados
end
