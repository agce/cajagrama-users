class AddColumnTipoDeSuscripcion < ActiveRecord::Migration
  def change
    add_column :suscriptions, :suscription_type, :string
  end
end
