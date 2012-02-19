#encoding: utf-8
class Proyecto < ActiveRecord::Base
  # validates :novia, :length => { :minimum => 3, :message => 'Dinos el nombre de la feliz novia' }
  # validates :novio, :length => { :minimum => 3, :message => 'Dinos quién es el afortunado novio' }
  # validates :presupuesto, :length => { :minimum => 3, :message => 'Cuéntanos, ¿cuánto estás dispuesto a gastar?' }
  # validates :fecha, :length => { :minimum => 3, :message => 'Coméntanos, ¿cuándo tienen planeada la boda?' }
  validates_presence_of :novia
  
  def self.has? user_id
    Proyecto.where(:user_id => user_id).count.blank?
  end
end
