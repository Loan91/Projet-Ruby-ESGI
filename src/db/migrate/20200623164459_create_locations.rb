class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
       t.belongs_to :user
       t.belongs_to :user_emprunteur, class_name: 'User', foreign_key: 'user_emprunteur'

       t.date :date_emprunt

       t.timestamps
    end
  end
end
