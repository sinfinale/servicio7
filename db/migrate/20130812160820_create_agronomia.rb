class CreateAgronomia < ActiveRecord::Migration
  def change
    create_table :agronomia do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
