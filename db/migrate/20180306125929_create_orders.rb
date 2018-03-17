class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.decimal :price
      t.string :imageUrl

      t.timestamps
    end
  end
end
