module Api
  class BlogsController < ApplicationController
    
    before_action :set_user, only: [:index]
 
    def index
      @blogs = @User.blogs
      list_blogs = @blogs.each do |blog|
        [] << blog.as_json
      end
      @list_blogs = list_blogs
    end

    private
      def set_user 
        @User = User.find(params[:user_id])
      end
  end
end