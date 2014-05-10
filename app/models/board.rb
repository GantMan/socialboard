# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  subtitle   :string(255)
#  autoshow   :boolean
#  delay      :integer
#  repeat     :boolean
#  curated    :boolean
#  created_at :datetime
#  updated_at :datetime
#  keywords   :text             default("[]"), not null
#  blacklist  :text             default("[]"), not null
#

class Board < ActiveRecord::Base
  serialize :keywords, JSON
  serialize :blacklist, JSON

  def keywords_list=(values)
    self.keywords = values.split(/,\s*/)
  end

  def keywords_list
    self.keywords.join(", ")
  end

  def blacklist_list=(values)
    self.blacklist = values.split(/,\s*/)
  end

  def blacklist_list
    self.blacklist.join(", ")
  end
end
