class CreateEstabelecimentos < ActiveRecord::Migration
  def self.up
    create_table :estabelecimentos do |t|
      t.integer :id
      t.string :nome
      t.string :end_logradouro
      t.string :end_numero
      t.string :end_complemento
      t.integer :bairro_id
      t.integer :cidade_id
      t.string :cep

      t.timestamps
    end
  end

  def self.down
    drop_table :estabelecimentos
  end
end
