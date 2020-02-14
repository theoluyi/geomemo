class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    # before_action :user_specific, only: [ :destroy]

    def new
      @user = User.new
    end
  
    def create
      @user = User.create(user_params)
    #   if @user.valid?
    #     redirect_to root_path
    #   else
    #     flash[:errors] = @user.errors.full_messages
    #     redirect_to new_user_path
    #   end
      session[:user_id] = @user.id
      redirect_to root_path
    end
  

 
    def destroy
      @user.destroy
      redirect_to users_path
    end
  
  
  
  private 
   
    def user_specific
      @user = User.find(params[:id])
    end
  
    def user_params
      params.require(:user).permit(:username, :password)
    end
  
  end
  