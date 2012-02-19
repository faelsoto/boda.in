class AddForeignKeysToProveedores < ActiveRecord::Migration
  def change
    add_column :proveedors, :tarea_id, :integer
    add_column :proveedors, :user_id, :integer
    add_column :proveedors, :orden, :integer
  end
end
