class CreateUsers < ActiveRecord::Migration[5.2]

  def change
    create_table :users do |u|
      u.string :name
      u.integer :age
      u.string :favorite_color
      u.string :zodiac_sign
      u.boolean :status
    end
  end
end
