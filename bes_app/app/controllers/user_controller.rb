class UserController < ApplicationController

def login_user
 @user = User.find(:all,:conditions, :username => params[:user][:username],:encrypted_password => params[:user][:encrypted_password])
 
 if !@user.blank?
  render :show
else
  redirect_to :root
end
end



def new
	@besapp = User.all
end

  def create
  	@besapp = User.new(user_params)
    if @besapp.save
      
      redirect_to :user_index, notice: 'Success! Registration was successfully saved.'
    else
      render :index
    end
  end
  def show
    
       @visitor = User.find(params[:id])

  end
def index
end

  private
  def set_visitor
    @besapp = User.find(params[:id])
  end

def user_params
  params.require(:user).permit(:username, :email, :encrypted_password, :password_confirmation)
end
  
end
