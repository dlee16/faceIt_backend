class UsersController < ApplicationController
    def index
        @users = User.all 
        render json:@users
    end 

    def show
        @user = User.find(params[:id])
        render json:@user
    end 

    def create
        @user= User.new(
            name: params[:name],
            username: params[:username],
            password: params[:password],
            email: params[:email]
        )
        render json:@user
    end 
end
