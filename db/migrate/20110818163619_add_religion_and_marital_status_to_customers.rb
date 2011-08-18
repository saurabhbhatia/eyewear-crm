class AddReligionAndMaritalStatusToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :religion, :string
    add_column :customers, :marital_status, :string
  end

  def self.down
    remove_column :customers, :marital_status
    remove_column :customers, :religion
  end
end
