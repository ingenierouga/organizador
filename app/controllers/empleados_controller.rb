class EmpleadosController < ApplicationController
  def index
    @empleados = Empleado.all
  end
  
   

  def new
    @empleado = Empleado.new
    @empresas = Empresa.all
  end

  def create
   # @empresa = Empresa.new(params[:empresa])
    @empleado = Empleado.new
    @empleado.nombre = params[:nombre]

    @empleado.correo_electronico = params[:correo_electronico]
    @empleado.rfc = params[:rfc]
    @empleado.empresa_id = params[:empresa_id]
    @empleado.password = params[:password]
 #   @empleado.password_confirmation = params[:confirmation_password]
    if  @empleado.save
   #  @empresa.save!
       flash[:notice]  = "El Empleado ha sido guardado"
        redirect_to controller: 'empresas', action: 'index'
    else
       flash[:notice]  = "Ese correo ya ha sido registrado"
        redirect_to action: 'new'

    end
  end


  def edit
    @empleado = Empleado.find(params[:id])
    @empresas = Empresa.all
  end

  def update
    @empleado = Empleado.new
    @empleado.nombre = params[:nombre]

    @empleado.correo_electronico = params[:correo_electronico]
  #  @empleado.rfc = params[:rfc]
    @empleado.empresa_id = params[:empresa_id]
    @empleado.password = params[:password]
    
    if  @empleado.save
   #  @empresa.save!
       flash[:notice]  = "El Empleado ha sido guardado"
        redirect_to controller: 'empresas', action: 'index'
    else
       flash[:notice]  = "Ese correo ya ha sido registrado"
       redirect_to action: 'edit'
      #redirect_to empresas_new_path, :notice => "Hubo un error al guardar en base de datos"
      #render "new"
    end
    
  end

  def destroy
     @empleado = Empleado.find(params[:id])
     @empleado.destroy!
     redirect_to empleados_path, :notice => "El Empleado ha sido eliminado"
     
  end
  
  
  
  def sign_in
    
  end
end
