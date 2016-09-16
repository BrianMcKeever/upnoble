class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.string :slug
      t.integer :user_id
      t.text :body
      t.timestamps
    end

    add_index :articles, :slug
  end
end
