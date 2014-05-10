class Board < ActiveRecord::Base
  serialize :keywords, JSON
  serialize :blacklist, JSON
end
