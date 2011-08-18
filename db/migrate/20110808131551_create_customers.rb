class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :middlename
      t.string :surname
      t.text :address
      t.string :area
      t.string :city
      t.string :business
      t.string :phone_number
      t.integer :group_id
      t.integer :category_id
      t.text :remark

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
