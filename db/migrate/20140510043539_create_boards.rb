class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.string :subtitle
      t.boolean :autoshow
      t.integer :delay
      t.boolean :repeat
      t.boolean :curated

      t.timestamps
    end
  end
end
