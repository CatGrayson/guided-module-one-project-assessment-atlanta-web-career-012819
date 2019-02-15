class CreateVideos < ActiveRecord::Migration[5.2]

  def change
    create_table :videos do |v|
      v.string :url
      v.string :title
      v.string :category
      v.string :mood
    end
  end
end
