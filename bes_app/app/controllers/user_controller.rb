class UserController < ApplicationController

def login_user
 @user = User.where("username = ? AND encrypted_password = ?", params[:user][:username], params[:user][:encrypted_password] )
 #raise @user.inspect
 if !@user.blank?
  render :home, notice: 'Login Success!'
else
  redirect_to :user_new, notice: 'Incorrect Username/Password'
    
end
end

def login_params
params.require(:user).permit(:username, :encrypted_password)
end

def new
	@besapp = User.all
end

  def create
  	@besapp = User.new(user_params)
    if @besapp.save
      
      redirect_to :user_index, notice: 'Success!  Registration Done.'
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
