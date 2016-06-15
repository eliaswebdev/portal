class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :operadora
      t.integer :ddd
      t.string :numero
      t.boolean :whatsapp

      t.timestamps null: false
    end
  end
end
