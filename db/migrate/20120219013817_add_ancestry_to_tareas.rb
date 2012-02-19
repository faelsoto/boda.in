class AddAncestryToTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :titulo
      t.timestamps
    end

    add_column :tareas, :ancestry, :string

  end
end
