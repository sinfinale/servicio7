class CreateHumanidades2s < ActiveRecord::Migration
  def change
    create_table :humanidades2s do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
