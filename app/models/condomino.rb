class Condomino < ActiveRecord::Base
  belongs_to :cliente
  attr_accessible :nome, :unidade
end
