class AddTempUserInfoToSuscriptions < ActiveRecord::Migration
  def change
    add_column :suscriptions, :username, :string
    add_column :suscriptions, :email, :string
    add_column :suscriptions, :direccion, :string
    add_column :suscriptions, :colonia, :string
    add_column :suscriptions, :ciudad, :string
    add_column :suscriptions, :estado, :string
    add_column :suscriptions, :cp, :string
    add_column :suscriptions, :telefono, :string
  end
end
