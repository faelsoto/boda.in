class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.integer :user_id
      t.string :novio
      t.string :novia
      t.date :fecha
      t.integer :presupuesto

      t.timestamps
    end
  end
end
