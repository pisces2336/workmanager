class RemovePriceFromCommitions < ActiveRecord::Migration[7.0]
  def up
    remove_column :commitions, :price
  end

  def down
    add_column :commitions, :price, :integer
  end

end
