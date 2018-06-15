class EmployeesController < ApplicationController
 load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_url, alert: exception.message
end



  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  render :layout => false
  end
  def persnal
  end

def department_creation
end

  # GET /employees/new
  def new
@employee = Employee.new

if params[:from] == 'start'
render :layout => false
end
  end
  def login_page
@user_emp = User.all.collect{|a| a.emp_code}
 @emp_emp = Employee.all.collect{|e| e.emp_code}
 @res = @user_emp - @emp_emp 
  if params[:from] != "login_credentials"

render :layout => false
end

end
def create_credentials
@exist = User.find_by_email(params[:email])
if !@exist
@user = User.new
@user.email = params[:email]
@user.password = params[:password]
@user.password = params[:password_confirmation]
@user.department_id= params[:department][:id]
dep = Department.find(params[:department][:id].to_i).dep_code
@dep = User.where("emp_code LIKE ? and department_id=?", "%#{dep}%",params[:department][:id].to_i).last
if (@dep && @dep.department_id.to_i == params[:department][:id].to_i)
  num = @dep.emp_code.index('_')
val = @dep.emp_code[num.to_i+1..-1].to_i + 1
code = 'BES'+'_'+dep+ '_'+val.to_s
@user.emp_code = code  
else
code = 'BES'+'_'+dep+ '_'+1.to_s
@user.emp_code = code  
  end
status = false
  User.transaction do
status = @user.save
@role = Role.find_by_id(params[:emp][:role].to_i).name
if status
if @role=="employee"
status = @user.add_role(:employee)
elsif @role=="hr"
status=@user.add_role(:hr)
elsif @role=="manager"
status =@user.add_role(:manager)
elsif @role == "admin"
status =@user.add_role(:admin)
end
end
end
if status
flash[:notice] =  "successfully created"
  redirect_to :action=> 'login_page',:from=> 'login_credentials'
else
flash[:notice] =  "unsuccesfull"
  redirect_to :action=> 'login_page', :from=> 'login_credentials'
end
else
flash[:notice] =  "email already exist"
  redirect_to :action=> 'login_page', :from=> 'login_credentials'

end
end

  # GET /employees/1/edit
  def edit
  
  end
  def emp_list_show
if params[:from] == "search"
@emp_list = Employee.where("name ilike ?", "%#{params[:name]}%")
#raise @emp_list.inspect
end

render :layout=> false
  end
def search_employee
render :layout=> false
end

def check_employee_type
if !params[:paras].blank?
str = params[:paras].to_s.split('_')
dep = Department.find_by_dep_code(str[1])
if params[:type] == "Employee"
#raise gjh.inspect
@employee_typ =Employee.joins(:user).where("users.department_id =? and employees.level = ?",dep.blank? ? nil :dep.id.to_i,"Manager")
elsif params[:type] == "Manager"
@employee_typ = Employee.where("level = ?","CEO")
end


elsif params[:type] == "Employee"
#raise gjh.inspect
@employee_typ =Employee.where(" employees.level = ?","Manager")
elsif params[:type] == "Manager"
@employee_typ = Employee.where("level = ?","CEO")
end
render :layout => false
end
  # POST /employees
  # POST /employees.json
def create
raise params.inspect 
    @employee = Employee.new(employee_params)
    @employee.date = params[:employees]["written_on(3i)"] 
    @employee.month = params[:employees]["written_on(2i)"] 
    @employee.year = params[:employees]["written_on(1i)"] 
    @employee.level = params[:employee][:level] 
    @employee.parent_id = params[:employee][:parent_id].to_i if !params[:employee][:parent_id].blank?
    @employee.user_id = current_user.id
    
    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:name,:designation,:image_url,:addres,:address1,:city,:region,:postal_code,:aadhar,:pan,:phone,:blood,:marital,:emp_code)
    end
end
