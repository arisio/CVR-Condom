class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :tipo
      t.integer :cnpj
      t.string :razSocial
      t.string :ender

      t.timestamps
    end
  end
end
