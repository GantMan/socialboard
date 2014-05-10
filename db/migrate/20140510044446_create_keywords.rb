class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :text
      t.references :board, index: true
      t.boolean :blacklist

      t.timestamps
    end
  end
end
