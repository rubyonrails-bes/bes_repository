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
	@besapp = User.new
end

def login_user

  #raise params[:psw].inspect
 @login = User.first

 if !@login.nil?
   render :index
 else
  redirect_to :user_index, notice: 'Invalide.'

  end
 #@login = User.find(2)
 # @login = User.find_by_name(params[:uname])
end

def index
  end
  def create
<<<<<<< HEAD
    raise params[:username].inspect
  #raise bes_params.inspect
  	@besapp = User.new(bes_params)
  	  #raise @besapp.inspect	
    if @besapp.save
      
      redirect_to :user_create, notice: 'Form was successfully saved.'
=======
  	@besapp = User.new(user_params)
    if @besapp.save
      
      render :new, notice: 'Success! Registration was successfully saved.'
>>>>>>> 44d4d1d996d17c1f2a6fb06d7c12600ace72f8ad
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

<<<<<<< HEAD
  def bes_params
    #params.require(:user).permit(:name, :username, :password, :status)
    params.require(:user).permit(:name, :username, :password, :status)
  end
=======
def user_params
  params.require(:user).permit(:username, :email, :encrypted_password, :password_confirmation)
end
  
>>>>>>> 44d4d1d996d17c1f2a6fb06d7c12600ace72f8ad
end
