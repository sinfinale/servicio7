class CreateAgronomiagaleras < ActiveRecord::Migration
  def change
    create_table :agronomiagaleras do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
