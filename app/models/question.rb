class Question < ActiveRecord::Base
  has_many :answers, :dependent => :destroy
  validates :body, :presence => true
  validates :title, :presence => true,
            :length => {:minimum => 3}
end
