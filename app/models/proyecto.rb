class Proyecto < ActiveRecord::Base
  def self.has? user_id
    Proyecto.where(:user_id => user_id).count.blank?
  end
end
