class CreateMedicinas < ActiveRecord::Migration
  def change
    create_table :medicinas do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
