class Answer < ActiveRecord::Base

  validates :body, :presence => true
  validates :title, :presence => true,
            :length => {:minimum => 3}
  belongs_to :question
end
