class CreateOrdersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :orders_tables do |t|

      t.timestamps
    end
  end
end
