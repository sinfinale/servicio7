class CreateCafetines < ActiveRecord::Migration
  def change
    create_table :cafetines do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
