class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :avatar
      t.date :date_of_birth
      t.string :gender

      t.timestamps null: false
    end
  end
end
