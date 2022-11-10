class RemovePaidFromCommitions < ActiveRecord::Migration[7.0]
  def up
    remove_column :commitions, :paid
  end

  def down
    add_column :commitions, :paid, :boolean
  end
end
