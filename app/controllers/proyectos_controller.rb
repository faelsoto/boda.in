class ProyectosController < ApplicationController
  def index
  end

  def new
    @proyecto = Proyecto.new
  end
end
