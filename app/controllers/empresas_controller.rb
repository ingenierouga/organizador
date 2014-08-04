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
 #   puts params[:nombre]
 #   puts "hola"
    @empresa.calle = params[:calle]
    @empresa.colonia = params[:pais2]
    @empresa.numero_ext = params[:numero_ext]
    @empresa.numero_int = params[:numero_int]
    @empresa.codigo_postal = params[:codigo_postal]
    @empresa.ciudad = params[:ciudad]
    @empresa.pais = params[:pais]
   # if  @empresa.save
    @empresa.save!
      redirect_to empresas_path, :notice => "Tu sucursal ha sido guardada"
   # else
   #   redirect_to empresas_show_path
     ##   render "new"
   # end
  end


  def edit
    @empresa = Empresa.find(params[:id])
    
  end

  def update
    @empresa = Empresa.find(params[:id])
    @empresa.nombre = params[:nombre]
    @empresa.calle = params[:calle]
    @empresa.colonia = "colonia prueba"
    @empresa.numero_ext = params[:numero_ext]
    @empresa.numero_int = params[:numero_int]
    @empresa.codigo_postal = params[:codigo_postal]
    @empresa.ciudad = params[:ciudad]
    @empresa.pais = params[:pais]
    @empresa.update!
    redirect_to empresas_path, :notice => "Tu sucursal ha sido actualizada"
    
  #  if @empresa.update_attributes(params[:empresa]) 
  #    redirect_to posts_path, :notice => "Tu post se ha actualizado"
  #  else
  #    render "edit"
  #  end
  end

  def destroy
     @empresa = Empresa.find(params[:id])
     @empresa.destroy!
     redirect_to empresas_path, :notice => "Tu sucursal ha sido eliminada"
     
  end
end
