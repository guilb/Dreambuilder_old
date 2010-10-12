class CreateFloors < ActiveRecord::Migration
  def self.up
    create_table :floors do |t|
      t.string :title
      t.string :alias
      t.string :menu_label
      t.string :plan
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :floors
  end
end
