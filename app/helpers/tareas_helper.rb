module TareasHelper
  def nested_tarea(tareas)
    tareas.map do |tarea, sub_tareas|
      render(:partial => 'test', :locals => {:tarea => tarea}) + content_tag(:ul, nested_tarea(sub_tareas), :class => "fuck nolist nobullet")
    end.join.html_safe
  end
end
