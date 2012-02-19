class Tarea < ActiveRecord::Base
  has_many :proveedors
  has_ancestry
end
