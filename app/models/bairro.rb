class Bairro < ActiveRecord::Base
  belongs_to :cidade
  has_many :estabelecimento
  has_many :usuario
  
  validates_presence_of(:nome)
 
end
