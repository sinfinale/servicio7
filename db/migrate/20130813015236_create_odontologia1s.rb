class CreateOdontologia1s < ActiveRecord::Migration
  def change
    create_table :odontologia1s do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
