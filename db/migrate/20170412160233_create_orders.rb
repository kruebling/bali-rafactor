class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.column :status, :integer, default: 1
      t.column :account_id, :integer
      t.column :total_price, :decimal
    end
  end
end
