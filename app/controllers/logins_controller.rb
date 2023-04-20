class LoginsController < ApplicationController
    def new
    end

    def show 
        @user=User.find(params[:id])
    end

    def create
          signup = signup.find_by(email: params[:email])
          if signup && signup.authenticate(params[:password])
            session[:signup_id] = signup.id
            redirect_to signups_path
          else
            #flash.now.alert = "Email or password is invalid"
            render "new"
          end
    end

end
