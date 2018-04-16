class UserController < ApplicationController

def login_user
 #raise params[:user][:encrypted_password].inspect
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
    
  	@besapp = User.new(bes_params)
  	  	
    if @besapp.save
      llll
      
      redirect_to :user_index, notice: 'Member was successfully saved.'
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

  def bes_params

    params.permit(:username,:email, :encrypted_password)
  end
end
