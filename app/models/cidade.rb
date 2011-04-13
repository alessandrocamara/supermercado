class Cidade < ActiveRecord::Base
  has_many :bairro
  has_many :estabelecimento
  
  validates_presence_of(:nome)
  
end
