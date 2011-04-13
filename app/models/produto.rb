class Produto < ActiveRecord::Base
  belongs_to :categoria
  
  validates_presence_of(:nome, :descricao)
  validates_uniqueness_of(:nome)
  validate :tamanho_do_nome

  protected
  def tamanho_do_nome
    errors.add(:nome, 'Informe pelo menos 5 caracteres para o nome.') if nome.length < 5
  end  

    
end
