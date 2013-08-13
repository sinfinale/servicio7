class CreateOdontologia3s < ActiveRecord::Migration
  def change
    create_table :odontologia3s do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
