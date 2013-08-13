class CreateOdontologiaimprenta < ActiveRecord::Migration
  def change
    create_table :odontologiaimprenta do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
