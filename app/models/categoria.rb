class Categoria < ActiveRecord::Base
  has_many :produto

  validates_presence_of(:nome)
  validates_uniqueness_of(:nome)
  
end
