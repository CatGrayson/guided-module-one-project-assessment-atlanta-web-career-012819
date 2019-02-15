class CreateFavorites < ActiveRecord::Migration[5.2]

  def change
    create_table :favorites do |f|
      f.integer :user_id
      f.integer :video_id
    end
  end
end
