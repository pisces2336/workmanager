class AddColumnMemoToWorks < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :memo, :text
  end
end
