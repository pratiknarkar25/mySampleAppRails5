class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :race
      t.integer :blog_id

      t.timestamps
    end
  end
end
