class CreateArtes < ActiveRecord::Migration
  def change
    create_table :artes do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
