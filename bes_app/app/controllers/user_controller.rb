class UserController < ApplicationController
def new
	@besapp = User.all
end

  def create
  	raise params.inspect
  	@besapp = User.new(bes_params)
  	  	
    if @besapp.save
      
      redirect_to :visitor_create_url, notice: 'Visitor was successfully saved.'
    else
      render :show
    end
  end
  def show
    hhhhh
       @visitor = User.find(params[:id])

  end


  private
  def set_visitor
    @besapp = User.find(params[:id])
  end

  def bes_params
    params.require(:user).permit(:username, :password)
  end
end
