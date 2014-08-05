class SessionsController < ApplicationController
  
  def new
  end

  def create
    @empleado = Empleado.find_by(correo_electronico: params[:session][:email].downcase)
    if @empleado && (@empleado.password == params[:session][:password])
      flash[:notice]  = "Login Exitoso"
      redirect_to empresas_path
    else
      flash[:notice]  = "Hubo un problema con tus credenciales"
      redirect_to action: 'new'
    end
  end





  def destroy
  end
  
end
