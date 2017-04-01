class AddTimestampsToSuscription < ActiveRecord::Migration
  def change
    add_column(:suscriptions, :created_at, :datetime)
    add_column(:suscriptions, :updated_at, :datetime)
  end
end
