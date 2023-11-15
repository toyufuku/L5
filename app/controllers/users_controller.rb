class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(uid: params[:user][:uid], pass: params[:user][:pass], age: params[:user][:age])
        if @user.save
            redirect_to users.path
        else
            render 'new'
        end
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end
end
