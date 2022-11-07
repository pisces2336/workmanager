class CreateCommitions < ActiveRecord::Migration[7.0]
  def change
    create_table :commitions do |t|
      t.integer :user_id

      t.string :name
      t.string :twitter_id
      t.boolean :early_submit
      t.boolean :use_sample
      t.string :payment_method
      t.integer :price
      t.boolean :paid

      t.timestamps
    end
  end
end
