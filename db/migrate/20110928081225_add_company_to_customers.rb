class AddCompanyToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :company, :string
  end

  def self.down
    remove_column :customers, :company
  end
end
