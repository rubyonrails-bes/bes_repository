class UserController < ApplicationController
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
    raise params[:username].inspect
  #raise bes_params.inspect
  	@besapp = User.new(bes_params)
  	  #raise @besapp.inspect	
    if @besapp.save
      
      redirect_to :user_create, notice: 'Form was successfully saved.'
    else
      render :show
    end
  end
  def show
    
       @visitor = User.find(params[:id])

  end


  private
  def set_visitor
    @besapp = User.find(params[:id])
  end

  def bes_params
    #params.require(:user).permit(:name, :username, :password, :status)
    params.require(:user).permit(:name, :username, :password, :status)
  end
end
