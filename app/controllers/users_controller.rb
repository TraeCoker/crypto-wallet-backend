class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def create
        @user = User.create!(user_params)
        render json: { user: UserSerializer.new(@user) }, status: :created
    end
    
      private
    def user_params
        params.require(:user).permit(:name, :password, :email)
    end
end
