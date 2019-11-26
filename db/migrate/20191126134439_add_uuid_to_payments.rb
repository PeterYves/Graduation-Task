class AddUuidToPayments < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :uuid, :string
  end
end
