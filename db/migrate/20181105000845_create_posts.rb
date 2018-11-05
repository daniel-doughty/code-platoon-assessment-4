class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :headline
      t.integer :price
      t.text :body
      t.date :date
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
