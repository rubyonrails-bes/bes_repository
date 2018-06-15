class DepartmentsController < ApplicationController
def new
@department = Department.new
@designation = Designation.new
if params[:from] != 'same'

	render :layout => false

end
end

def create
status = false
if (Department.exists?(dep_name: params[:department][:dep_name]) || Department.exists?(dep_code: params[:department][:dep_code]) )
@department = Department.where(params_require).first
if @department.blank?
@department = Department.create(params_require)
end
else
@department  = Department.new(params_require)
status = @department.save
end
if !@department.blank?
@designation = @department.designations.new(:name => params[:designation])
if !@designation.department_id.blank?
status =@designation.save
end
end
if status
flash[:notice]="succesfull"
redirect_to :action => 'new', :local => @department, :from=> 'same'

else
flash[:notice] = "unsuccess"
render :action => 'new', :local => @department, :from=> 'same'

end

end

private

def params_require
params.require(:department).permit(:dep_name, :dep_code)

end
end