class CreateEconomia4s < ActiveRecord::Migration
  def change
    create_table :economia4s do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
