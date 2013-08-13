class CreateAgronomiaquimicas < ActiveRecord::Migration
  def change
    create_table :agronomiaquimicas do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
