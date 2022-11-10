class AddPaidToCommitions < ActiveRecord::Migration[7.0]
  def change
    add_column :commitions, :paid, :date
  end
end
