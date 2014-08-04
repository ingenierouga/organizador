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
    
   # if  @empresa.save
    @empleado.save!
      redirect_to empleado_path, :notice => "El Empleado ha sido guardado"
   # else
   #   redirect_to empresas_show_path
     ##   render "new"
   # end
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
    @empresa.empresa_id = params[:empresa_id]
    @empresa.password = params[:password]
    
    @empresa.save!
    redirect_to empleados_path, :notice => "El Empleado ha sido actualizada"
    
  #  if @empresa.update_attributes(params[:empresa]) 
  #    redirect_to posts_path, :notice => "Tu post se ha actualizado"
  #  else
  #    render "edit"
  #  end
  end

  def destroy
     @empleado = Empleado.find(params[:id])
     @empleado.destroy!
     redirect_to empleados_path, :notice => "El Empleado ha sido eliminado"
     
  end
  
  
  
  def sign_in
    
  end
end
