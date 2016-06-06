class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.references :editoria, index: true, foreign_key: true
      t.string :titulo
      t.string :subtitulo
      t.text :conteudo
      t.datetime :data_publicacao
      t.string :imagem
      t.boolean :status

      t.timestamps null: false
    end
  end
end
