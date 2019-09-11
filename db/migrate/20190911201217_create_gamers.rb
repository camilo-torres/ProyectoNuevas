class CreateGamers < ActiveRecord::Migration[6.0]
  def change
    create_table :gamers do |t|
      t.string :nickname
      t.string :password
      t.string :email
      t.string :country

      t.timestamps
    end
  end
end
