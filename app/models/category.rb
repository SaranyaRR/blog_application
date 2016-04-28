class Category < ActiveRecord::Base
  attr_accessible :categoryname, :post_id
  has_many :posts
end
