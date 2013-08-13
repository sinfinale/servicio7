class CreateAuditoriummarmols < ActiveRecord::Migration
  def change
    create_table :auditoriummarmols do |t|
      t.timestamp :Fecha_hora
      t.integer :WhTot

      t.timestamps
    end
  end
end
