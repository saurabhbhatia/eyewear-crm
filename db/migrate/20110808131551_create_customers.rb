class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :full_name
      t.text :address
      t.string :phone_number
      t.string :mobile_number
      t.string :email
      t.date :date_of_birth
      t.string :area
      t.string :city
      t.string :business
      t.integer :group_id
      t.integer :category_id
      t.text :remark
      t.string :slug

      t.timestamps
    end
     add_index :customers, :slug, :unique => true
  end

  def self.down
    drop_table :customers
  end
end
