class CreateEconomia3s < ActiveRecord::Migration
  def change
    create_table :economia3s do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
