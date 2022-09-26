class CreatePagos < ActiveRecord::Migration[7.0]
  def change
    create_table :pagos do |t|
      t.date :fecha_de_pago
      t.string :medio_de_pago
      t.boolean :pagado
      t.string :comprobante
      t.string :detalle

      t.timestamps
    end
  end
end
