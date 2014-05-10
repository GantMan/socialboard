# == Schema Information
#
# Table name: keywords
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  board_id   :integer
#  blacklist  :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Keyword < ActiveRecord::Base
  belongs_to :board
end
