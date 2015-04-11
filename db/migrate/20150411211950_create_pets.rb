class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :nome
      t.string :foto
      t.integer :sexo
      t.string :especie
      t.string :raca
      t.string :idade
      t.string :porte
      t.string :cor
      t.string :legenda
      t.text :descricao_longa
      t.string :status
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
