class CreatePeriodismos < ActiveRecord::Migration
  def change
    create_table :periodismos do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
