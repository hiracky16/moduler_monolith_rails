module Users
  class UsersController < ActionController::API
    def index
      render :json => User.all
    end
  end
end
