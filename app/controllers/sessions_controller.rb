class SessionsController < ApplicationController

  before_action  only: [:new, :create]

    def new
    end

    def create
      user = User.find_by(
                    name: params[:session][:name]
                  )
      if user
        if user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          redirect_to :root
        else
          render :new
        end
      else
        flash[:warning] = "Not a valid user."
        render :new
      end
    end

    def destroy
      session[:user_id] = nil
      flash[:success] = "Loggged out."
      redirect_to :root
    end

  end
