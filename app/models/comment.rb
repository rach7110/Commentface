class Comment < ActiveRecord::Base
  attr_accessible :message, :name, :score
end
