class EmpresasController < ApplicationController
  def index
    @empresas = Empresa.all
   

  end

  def show
    @empresa = Empresa.new
    @empresa.nombre = params[:nombre]
    @empresa.calle = params[:calle]
    @empresa.colonia = params[:colonia]
    @empresa.numero_ext = params[:numero_ext]
    @empresa.numero_int = params[:numero_int]
    @empresa.codigo_postal = params[:codigo_postal]
    @empresa.ciudad = params[:ciudad]
    @empresa.pais = params[:pais]
  end

  def new
    @empresa = Empresa.new
    @Empleados = Empleado.new
  end

  def create
   # @empresa = Empresa.new(params[:empresa])
    @empresa = Empresa.new
    @empresa.nombre = params[:nombre]
    @empresa.calle = params[:calle]
    @empresa.colonia = params[:colonia]
    @empresa.numero_ext = params[:numero_ext]
    @empresa.numero_int = params[:numero_int]
    @empresa.codigo_postal = params[:codigo_postal]
    @empresa.ciudad = params[:ciudad]
    @empresa.pais = params[:pais]
    if  @empresa.save
   #  @empresa.save!
       flash[:notice]  = "Tu sucursal ha sido guardada"
        redirect_to empresas_path
    else
       flash[:notice]  = "El nombre de la sucursal ya existe"
        redirect_to action: 'new'
      #redirect_to empresas_new_path, :notice => "Hubo un error al guardar en base de datos"
      #render "new"
    end
  end


  def edit
    @empresa = Empresa.find(params[:id])
     @empleados = Empleado.where("empresa_id = ?", params[:id])
  end

  def update
    @empresa = Empresa.find(params[:id])
    @empresa.nombre = params[:nombre]
    @empresa.calle = params[:calle]
    @empresa.colonia = params[:colonia]
    @empresa.numero_ext = params[:numero_ext]
    @empresa.numero_int = params[:numero_int]
    @empresa.codigo_postal = params[:codigo_postal]
    @empresa.ciudad = params[:ciudad]
    @empresa.pais = params[:pais]
  #  @empresa.update!
  #  redirect_to empresas_path, :notice => "Tu sucursal ha sido actualizada"
    
   if  @empresa.save
   #  @empresa.save!
       flash[:notice]  = "Tu sucursal ha sido guardada"
        redirect_to empresas_path
    else
       flash[:notice]  = "El nombre de la sucursal ya existe"
        redirect_to action: 'edit'
      #redirect_to empresas_new_path, :notice => "Hubo un error al guardar en base de datos"
      #render "new"
    end
  end

  def destroy
     @empresa = Empresa.find(params[:id])
     @empresa.destroy!
     redirect_to empresas_path, :notice => "Tu sucursal ha sido eliminada"
     
  end
end
