class CreateDistances < ActiveRecord::Migration
  def self.up
    create_table :distances do |t|
      t. string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :distances
  end
end
