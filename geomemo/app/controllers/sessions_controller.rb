class SessionsController < ApplicationController
     skip_before_action :authorized, only: [:new, :create]
    
  
    def new
  
    end
  
    def create
      
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
         session[:user_id] = @user.id
         redirect_to root_path
      else
        #update to match
        flash[:errors] = [ "We don't have a user with that username and password" ]
         redirect_to '/login'
      end
    end
  
    def login
    end

    def page_requires_login
    end
  
  
    # def destroy
    #   session.delete(:user_id)
    #   redirect_to root_path
    # end
  end
  