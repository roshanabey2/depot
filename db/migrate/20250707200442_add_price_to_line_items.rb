class AddPriceToLineItems < ActiveRecord::Migration[7.2]
  def up
    add_column :line_items, :price, :decimal, precision: 8, scale: 2


    LineItem.reset_column_information
    LineItem.find_each do |line_item|
      product_id = line_item.product_id
      product_price = Product.find(product_id).price
      line_item.update!(price: product_price * line_item.quantity)
    end
  end

  def down
    remove_column :line_items, :price
  end
end
