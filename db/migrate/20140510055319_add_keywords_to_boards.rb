class AddKeywordsToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :keywords, :text, default: "[]", null: false
  end
end
