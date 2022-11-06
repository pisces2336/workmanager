class CreateCommitions < ActiveRecord::Migration[7.0]
  def change
    create_table :commitions do |t|

      t.timestamps
    end
  end
end
