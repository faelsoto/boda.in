class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :name
      t.string :ancestry

      t.timestamps
    end

    add_index 'tareas', :ancestry
  end
end
