class Estabelecimento < ActiveRecord::Base
  belongs_to :cidade
  belongs_to :bairro

  validates_presence_of(:nome, :cep, :bairro, :cidade)
  validates_uniqueness_of(:nome)

end
