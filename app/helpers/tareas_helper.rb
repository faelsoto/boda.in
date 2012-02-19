module TareasHelper
  def nested_tarea(tareas)
    tareas.map do |tarea, sub_tareas|
      render(:partial => 'tarea', :locals => {:tarea => tarea, :sub_tareas => sub_tareas })# + nested_sub_tarea(sub_tareas)
    end.join.html_safe
  end

  def nested_sub_tarea(subtareas)
    subtareas.map do |tarea, sub_tareas|
      render(:partial => "subtarea", :locals => { :tarea => tarea })
    end.join.html_safe
  end
end
