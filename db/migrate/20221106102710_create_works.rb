class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.integer :user_id
      t.integer :commition_id

      t.string :title
      t.date :date

      t.timestamps
    end
  end
end
