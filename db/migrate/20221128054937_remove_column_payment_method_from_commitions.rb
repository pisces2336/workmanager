class RemoveColumnPaymentMethodFromCommitions < ActiveRecord::Migration[7.0]
  def up
    remove_column :commitions, :payment_method
  end

  def down
    add_column :commitions, :payment_method, :string
  end

end
