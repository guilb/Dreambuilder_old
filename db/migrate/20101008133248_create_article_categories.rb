class CreateArticleCategories < ActiveRecord::Migration
  def self.up
    create_table :article_categories do |t|
      t.string :title
      t.string :alias
      t.string :menu_label
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :article_categories
  end
end
