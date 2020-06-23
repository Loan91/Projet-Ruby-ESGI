class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.bigint :film_id
      t.string :titre, limit: 50
      t.date :date_sortie

      t.timestamps
    end
  end
end
