class Cliente < ActiveRecord::Base
  has_many :condomino
  attr_accessible :cnpj, :ender, :razSocial, :tipo
end
