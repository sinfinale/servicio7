class CreateComedorues < ActiveRecord::Migration
  def change
    create_table :comedorues do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
