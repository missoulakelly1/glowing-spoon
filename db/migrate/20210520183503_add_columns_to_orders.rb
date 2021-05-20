class AddColumnsToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders_tables, :shopify_order_id, :string
    add_column :orders_tables, :email, :string
    add_column :orders_tables, :total_price, :int
    add_column :orders_tables, :order_number, :int
  end
end
