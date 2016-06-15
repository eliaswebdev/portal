class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.belongs_to :noticia, index: true, foreign_key: true
      t.string :nome
      t.text :descricao
      t.string :arquivo

      t.timestamps null: false
    end
  end
end
