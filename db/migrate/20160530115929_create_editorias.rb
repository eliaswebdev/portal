class CreateEditorias < ActiveRecord::Migration
  def change
    create_table :editorias do |t|
      t.string :nome
      t.boolean :status

      t.timestamps null: false
    end
  end
end
