class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.integer :bairro
      t.integer :cidade

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
