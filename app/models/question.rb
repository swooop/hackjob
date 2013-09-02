class Question < ActiveRecord::Base
  attr_accessible :email, :name, :questionline, :answer

  has_many :answers
end
