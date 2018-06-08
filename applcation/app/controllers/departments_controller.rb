class DepartmentsController < ApplicationController
	
	def department_creation
		@depart = DepartmentCreate.new
		render :layout => false

	end

	def create
		
    @depart = DepartmentCreate.new(depart_params)
    status = @depart.save
    if status
    flash[:notice] = "Saved Successfully."
    else
	flash[:notice] = "Data Is already Have."
    end
    render :action=> 'department_creation'

    end







    private
    def depart_params

      params.require(:department_create).permit(:department_code,:department_name,:designation)
    end
end
