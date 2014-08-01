class EmpresasController < ApplicationController
  def index
    @empresas = Empresa.all
  end

  def show
    @empresa = Empresa.find(params[:id])
  end

  def new
    @empresa = Empresa.new
    @empresa.nombre = params[:nombre]
    @empresa.calle = params[:calle]
    @empresa.colonia = params[:colonia]
    @empresa.numero_ext = params[:numero_ext]
    @empresa.numero_int = params[:numero_int]
    @empresa.codigo_postal = params[:codigo_postal]
    @empresa.ciudad = params[:ciudad]
    @empresa.pais = params[:pais]
    @empresa.save
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
     @empresa = Empresa.find(params[:id])
     @empresa.destroy!
     redirect_to index
  end
end
