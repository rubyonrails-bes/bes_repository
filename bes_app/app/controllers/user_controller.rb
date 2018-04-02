class UserController < ApplicationController
def new
	@besapp = User.all
	#raise params.inspect
end

  def create
  	#raise VisitorBesolution.inspect
  	raise params.inspect
  	@besapp = User.new(bes_params)
  	  	#@visitor = VisitorBesolution.new(:name => params[:visitor_besolution][:name]) rescue nil
  	  	#@visitor = VisitorBesolution.new(params[:visitor_besolution]) rescue nil
         #@visitor.name = params[:visitor_besolution][:name] rescue nil
#raise @visitor.name.inspect
    #@product.user = current_user
    if @besapp.save
      #gggg
      redirect_to :visitor_create_url, notice: 'Visitor was successfully saved.'
          #flash[:notice] = "Form Created and Saved Successfully."
    else
      render :show
    end
  end
  def show
    hhhhh
   # @visitor = VisitorBesolution.all
       @visitor = User.find(params[:id])

  end


  private
  def set_visitor
    @besapp = User.find(params[:id])
  end

  def bes_params
  	#raise params.require(:visitor_besolution).inspect
    params.require(:user).permit(:username, :password)
  end
end
