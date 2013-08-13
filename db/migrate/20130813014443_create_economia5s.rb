class CreateEconomia5s < ActiveRecord::Migration
  def change
    create_table :economia5s do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
