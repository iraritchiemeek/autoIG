class CreateInstagramLikes < ActiveRecord::Migration
  def change
    create_table :instagram_likes do |t|

      t.timestamps null: false
    end
  end
end
