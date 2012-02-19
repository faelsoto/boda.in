class ProyectosController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def new
    @proyecto = Proyecto.new
  end

  def create
    params[:proyecto][:user_id] = current_user.id
    @proyecto = Proyecto.new(params[:proyecto])
    redirect_to proyectos_path @proyecto if @proyecto.save
  end

  def show 
    @proyecto = Proyecto.where :id => params[:id], :user_id => current_user.id
  end
end
