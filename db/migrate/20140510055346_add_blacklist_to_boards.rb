class AddBlacklistToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :blacklist, :text, default: "[]", null: false
  end
end
