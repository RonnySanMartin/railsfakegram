class CreateLikeImages < ActiveRecord::Migration[5.2]
  def change
    create_table :like_images do |t|
      t.references :user, foreign_key: true
      t.references :image, foreign_key: true

      t.timestamps
    end
  end
end
