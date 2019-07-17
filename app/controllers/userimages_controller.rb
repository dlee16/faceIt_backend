class UserimagesController < ApplicationController
    def index
        @userimg = Userimage.all 
        render json: @userimg
    end 

    def show
        @userimg = Userimage.find(params[:id])
        render json: @userimg
    end 

    def create
        @userimg = Userimg.find_or_create_by(userimg_params)
        render json: @userimg
    end 

    private
    def userimg_params
        params.require(:userimage).permit(:user_id, :image_id, :userimg)
    end 
end
