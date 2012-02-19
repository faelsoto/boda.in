class DeleteTareasTable < ActiveRecord::Migration
  def up
    drop_table 'tareas'
  end

  def down
  end
end
