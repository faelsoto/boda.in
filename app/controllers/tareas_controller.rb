class TareasController < ApplicationController
  def index
    @tareas = Tarea.where("1=1")
  end
end
