class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titre
      t.string :date_publication
      t.string :chapeau
      t.text :corps
      t.references :auteur, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
