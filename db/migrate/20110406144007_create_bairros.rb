class CreateBairros < ActiveRecord::Migration
  def self.up
    create_table :bairros do |t|
      t.integer :id
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :bairros
  end
end
