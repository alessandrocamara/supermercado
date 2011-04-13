class Bairro < ActiveRecord::Base
  belongs_to :cidade
  has_many :estabelecimento
  
  validates_presence_of(:nome)
 
end
