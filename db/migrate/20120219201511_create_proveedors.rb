class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :name
      t.string :presupuesto
      t.string :notas

      t.timestamps
    end
  end
end
