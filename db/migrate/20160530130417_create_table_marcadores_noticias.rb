class CreateTableMarcadoresNoticias < ActiveRecord::Migration
  def change
    create_table :marcadores_noticias do |t|
      t.belongs_to :marcador, index: true, foreign_key: true
      t.belongs_to :noticia, index: true, foreign_key: true
    end
  end
end
