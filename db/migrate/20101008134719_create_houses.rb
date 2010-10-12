class CreateHouses < ActiveRecord::Migration
  def self.up
    create_table :houses do |t|
      t.string :title
      t.string :alias
      t.string :menu_label
      t.text :description
      t.string :plan
      t.integer :floor_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :houses
  end
end
