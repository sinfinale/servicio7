class CreateHumanidades1s < ActiveRecord::Migration
  def change
    create_table :humanidades1s do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
