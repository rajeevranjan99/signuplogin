class SignupsController < ApplicationController
  def index
    @signup=Signup.all
  end
  
  def show 
    @signup=Signup.find(params[:id])
  end
  
  def new
    @signup=Signup.new 
  end

  def create 
    debugger
    @signup=Signup.new(signup_params)
    if @signup.save 
      redirect_to new_login_path
    else
      render "new"
    end
  end


  private
    def signup_params
      params.require(:signup).permit(:email, :password, :password_confirmation)
   end
end
