class CreateAgronomiadecanatos < ActiveRecord::Migration
  def change
    create_table :agronomiadecanatos do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
