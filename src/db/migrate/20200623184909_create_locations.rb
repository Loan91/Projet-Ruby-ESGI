class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
       t.belongs_to :user
       t.belongs_to :videotheque

       t.date :date_emprunt

       t.timestamps
    end
  end
end
