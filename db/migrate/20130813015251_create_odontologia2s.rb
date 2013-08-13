class CreateOdontologia2s < ActiveRecord::Migration
  def change
    create_table :odontologia2s do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
