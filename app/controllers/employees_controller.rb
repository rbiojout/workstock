class EmployeesController < InheritedResources::Base

  private

    def employee_params
      params.require(:employee).permit(:email, :password, :name, :first_name, :entry_date, :mobile, :picture, :role)
    end
end

