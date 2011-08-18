class CreatePrescriptions < ActiveRecord::Migration
  def self.up
    create_table :prescriptions do |t|
      t.integer :customer_id
      t.integer :distance_id
      t.float :right_sph
      t.float :right_cyl
      t.float :right_axi
      t.float :right_vision
      t.float :left_sph
      t.float :left_cyl
      t.float :left_axi
      t.float :left_vision

      t.timestamps
    end
  end

  def self.down
    drop_table :prescriptions
  end
end
