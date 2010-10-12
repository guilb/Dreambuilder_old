class CreateMedias < ActiveRecord::Migration
  def self.up
    create_table :medias do |t|
      t.string :title
      t.string :alias
      t.string :menu_label
      t.string :file
      t.integer :media_category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :medias
  end
end
