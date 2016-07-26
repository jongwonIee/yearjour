class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :title
      t.string :content
      
      t.string :place
      t.string :date
      
      t.boolean :food
      t.boolean :citytour
      t.boolean :suburbtour
      t.boolean :guidetour
      
      t.boolean :concert
      t.boolean :sports
      t.boolean :gallery
      t.boolean :museum
      t.boolean :historic
      t.boolean :room
      t.boolean :car
      
      t.timestamps null: false
    end
  end
end
