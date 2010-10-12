class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :alias
      t.string :menu_label
      t.text :description
      t.text :params
      t.integer :position
      t.integer :article_category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
