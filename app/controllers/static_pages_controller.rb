class StaticPagesController < ApplicationController
  def home
  	@posts = Post.find(:all, :order => "created_at DESC", :limit => 5)
  end

  def help
  end
end
