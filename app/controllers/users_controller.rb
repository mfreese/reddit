class UsersController < ApplicationController

    def index_users
      @user = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to root_path
      else
      flash[:warning] = "Please fill in the box."
      render :new
      end
    end

    private

    def user_params
      params.require(:user).permit(:name, :email_address, :bio, :password)
    end

end
