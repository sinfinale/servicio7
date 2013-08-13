class CreateMecanicacomplejos < ActiveRecord::Migration
  def change
    create_table :mecanicacomplejos do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
