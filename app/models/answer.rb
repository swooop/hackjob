class Answer < ActiveRecord::Base
  attr_accessible :answer1, :answer2, :vote, :question

  belongs_to :question
end
