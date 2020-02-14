class ApplicationController < ActionController::Base
    #redirect error
    before_action :authorized
    helper_method :current_user
    helper_method :logged_in?
    # #feel free to edit names
    # before_action :setup_notification_stuff

    # def setup_notification_stuff
    #     @errors = flash[:errors]
    #     @notification = flash[:notification]
    # end

    def current_user
        User.find_by(id: session[:user_id])
    end

    def logged_in?   
        !current_user.nil? 
    end

    def authorized
        redirect_to root_path unless logged_in?
    end
end