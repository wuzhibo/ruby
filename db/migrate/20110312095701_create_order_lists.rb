class CreateOrderLists < ActiveRecord::Migration
  def self.up
    create_table :order_lists do |t|
      t.string :order_no
      t.date :order_date
      t.integer :state
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :order_lists
  end
end
