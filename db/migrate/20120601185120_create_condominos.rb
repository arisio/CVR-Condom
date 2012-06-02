class CreateCondominos < ActiveRecord::Migration
  def change
    create_table :condominos do |t|
      t.string :unidade
      t.string :nome

      t.timestamps
    end
  end
end
