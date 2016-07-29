class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :title
      t.string :content
      t.string :region
      t.string :place
      t.string :date
      t.string :time
      t.string :people
      
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
      
      t.boolean :male
      t.boolean :female
      t.integer :age
      t.integer :style
      t.integer :personality
      t.integer :money
      
      
      t.timestamps null: false
    end
  end
end
