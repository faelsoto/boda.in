#encoding: utf-8

class DefaultsForTareas < ActiveRecord::Migration
  def up
    {
      "Ceremonia" => ["Iglesia", "Civil"],
      "Decoración" => ["Ramo de Novia", "Flores", "Centros de Mesa", "Decoración de Salón"],
      "Evento" => ["Lugar", "Banquete", "Bebidas", "Pastel & Postres", "Meseros"],
      "Novia" => ["Vestido", "Zapatos", "Tocado", "Maquillaje", "Peinado", "Joyería", "Lencería"],
      "Novio" => ["Traje", "Zapatos", "Anillo de Boda"],
      "Multimedia" => ["Fotografía", "Video", "Grupo musical", "Accesorios", "Luz & Sonido"],
      "Papelería"  => ["Invitaciones", "Confirmación de Invitados", "Detalles", "Mesa de Regalos"],
      "Luna de Miel" => ["Hotel", "Avión", "Actividades"]
    }.each do |e,s| 
      t = Tarea.create :titulo => e
      s.each do |e|
        Tarea.create :titulo => e, :parent_id => t.id
      end
    end
  end
end
