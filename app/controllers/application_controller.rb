class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
    def index
      @users = User.all
    end

    def new
      @user = User.new
    end
    def current_user
      @user ||= User.find(session[:user_id]) if session[:user_id]
        
    end
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to :root
      else
        flash[:warning] = "Please fix the below."
        render :new
      end
    end

    private

    def user_params
      params.require(:user).permit(:username, :email_address, :password)
    end

end
