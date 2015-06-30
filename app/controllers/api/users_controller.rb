module Api
  class UsersController < ApplicationController
    def index
      @users = User.all
      list_user = @users.each do |user| 
        [] << user.as_json
       end
       @list_user = list_user
    end
  end
end