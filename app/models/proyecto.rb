class Proyecto < ActiveRecord::Base
  validates :novia, :length => { :minimum => 3, :wrong_length => 'test' }
  validates :novio, :length => { :minimum => 3, :wrong_length => 'test' }
  validates :presupuesto, :length => { :minimum => 3, :wrong_length => 'test' }
  validates :fecha, :length => { :minimum => 3, :wrong_length => 'test' }
  
  def self.has? user_id
    Proyecto.where(:user_id => user_id).count.blank?
  end
end
