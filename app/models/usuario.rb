class Usuario < ActiveRecord::Base
  belongs_to :cidade
  belongs_to :bairro

  validates_presence_of(:nome, :email, :senha, :cidade, :bairro)
  validates_uniqueness_of(:nome, :email)
  
  attr_accessor :senha_confirmation
  validates_confirmation_of(:senha, :message => "senhas nao sao iguais")
end
