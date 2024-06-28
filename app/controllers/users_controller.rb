class UsersController < ApplicationController
    def index
        @users = Users_sign_up.all
    end
    def create
        @users = Users_sign_up.create!(users_params)
      
        redirect_to users_path
    end
      
    private
      
    def users_params
        params.permit(:id, :email, :created_at )
    end

end
