class EmployeesController < ApplicationController
  def home
  end
  
  def index
    @employees=Employee.all
  end
  
  def new
    @employee = Employee.new
  end
  
  def show
    @employee = Employee.find(params[:id])
  end
  
  def create
    @employee =Employee.new(employee_params)
    if @employee.save
      flash[:success] = "Employee added into the system"
      redirect_to employees_path
    else
      render 'new'
    end
  end
  
  private
  
  def employee_params
      params.require(:employee).permit(:name, :address, :contact, :email, :username, :password,
                                   :password_confirmation)
  end
end
