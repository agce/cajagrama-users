class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :email, :direccion, :colonia, :ciudad, :estado, :cp, :telefono, :estatus
      t.timestamps
    end
  end
end
