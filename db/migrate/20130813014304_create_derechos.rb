class CreateDerechos < ActiveRecord::Migration
  def change
    create_table :derechos do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
