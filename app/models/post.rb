class Post < ActiveRecord::Base
  acts_as_votable  	
  attr_accessible :content, :title, :user_id, :cat,:likes
  belongs_to :user
  belongs_to :category
  has_many :comments
  validates :title, presence: true
  validates :content, presence: true
  validates :cat, presence: true
end
