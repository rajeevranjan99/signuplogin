class SessionsController < ApplicationController
    def new
    end
    def show 
        @user=User.find(params[:id])
    end
    
    # def create
    #   user = User.find_by(email: params[:email])
    #   if user && user.authenticate(params[:password])
    #     session[:user_id] = user.id
    #     redirect_to users_path
    #   else
    #     flash.now.alert = "Email or password is invalid"
    #     render "new"
    #   end
    # end

    def create
      user = User.find_by(email: params[:email])
      debugger
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to users_path
      else   
        #flash.now.alert = "Email or password is invalid "
        render "new"
      end
    end
  #   def create
    
  #     login = User.find_by(email: params[:email])
  #     if login && login.authenticate(params[:password])
  #         session[:current_user_id] = login.id
  #         redirect_to users_path
  #     else
  #         flash.now.alert = "email or password invalid"
  #         render :new, status: :unprocessable_entity
  #     end
  # end
    
    
    def destroy
      session[:user_id] = nil
      redirect_to root_url, notice: "Logged out!"
    end
  end