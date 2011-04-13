class Cidade < ActiveRecord::Base
  has_many :bairro
  has_many :estabelecimento
  has_many :usuario
  
  validates_presence_of(:nome)
  
end
