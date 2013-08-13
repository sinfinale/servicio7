class CreateEconomia2s < ActiveRecord::Migration
  def change
    create_table :economia2s do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
