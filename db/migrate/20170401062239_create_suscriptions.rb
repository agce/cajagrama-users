class CreateSuscriptions < ActiveRecord::Migration
  def change
    create_table :suscriptions do |t|
      t.string :nombre, :estatus
      t.integer :precio, :shippingdate, :user_id
    end
  end
end
