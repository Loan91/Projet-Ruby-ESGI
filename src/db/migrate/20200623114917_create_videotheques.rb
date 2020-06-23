class CreateVideotheques < ActiveRecord::Migration[6.0]
  def change
    create_table :videotheques do |t|
      t.belongs_to :user
      t.belongs_to :film
      t.timestamps
    end
  end
end
